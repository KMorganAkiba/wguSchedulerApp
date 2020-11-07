package wgu.SchedulerApp;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.ListView;

import androidx.appcompat.app.AppCompatActivity;

import com.google.android.material.floatingactionbutton.FloatingActionButton;

import java.util.Calendar;
import java.util.List;

public class ViewAllTerms extends AppCompatActivity {

    public static String LOG_TAG = "ViewAllTermsLog";
    TermAppDatabase db;
    ListView listView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_view_all_terms);
        setTitle("Terms");
        listView = findViewById(R.id.listView);
        db = TermAppDatabase.getInstance(getApplicationContext());

        //handles the user interface when user clicks on a current term to take them to the courses listed for that term.
        listView.setOnItemClickListener((parent, view, position, id) -> {
            Intent intent = new Intent(getApplicationContext(),ViewCoursesInTerm.class);
            int term_id;
            List<Terms> termsList = db.termsDAO().getTermsList();
            term_id = termsList.get(position).getTerm_id();
            intent.putExtra("termId", term_id);
            startActivity(intent);
        });
        updateData();

        FloatingActionButton addTerm = findViewById(R.id.addTermButton);
        addTerm.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Calendar calendar = Calendar.getInstance();
                int termIdCount = db.termsDAO().getTermsList().size() + 1;
                Terms addterm = new Terms();
                addterm.setTerm_name("New Term");
                addterm.setTerm_start(calendar.getTime());
                calendar.add(Calendar.MONTH,6);
                addterm.setTerm_end(calendar.getTime());
                addterm.setTerm_id(termIdCount);
                db.termsDAO().insertTerm(addterm);
                updateData();
            }
        });
    }

    protected void onResume(){
        super.onResume();
        updateData();
    }

    //Handles updating the terms list data when a new term is added or user lands on this page from another.
    private void updateData(){
        List<Terms> allTerms = db.termsDAO().getTermsList();

        String [] items = new String[allTerms.size()];
        if(!allTerms.isEmpty()){
            for (int i = 0; i < allTerms.size(); i++){
                items[i] = allTerms.get(i).getTerm_name();
            }
        }
        ArrayAdapter<String> adapter = new ArrayAdapter<>(this, android.R.layout.simple_list_item_1,items);
        listView.setAdapter(adapter);
        adapter.notifyDataSetChanged();
    }
}
