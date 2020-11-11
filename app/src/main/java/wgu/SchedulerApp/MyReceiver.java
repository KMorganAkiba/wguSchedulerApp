package wgu.SchedulerApp;

import android.app.NotificationManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationManagerCompat;

public class MyReceiver extends BroadcastReceiver {

    @Override
    public void onReceive(Context context, Intent intent) {
        NotificationCompat.Builder startAlarm = new NotificationCompat.Builder(context, "startNotification")
                .setSmallIcon(R.drawable.ic_launcher_foreground)
                .setContentTitle("Course Notification")
                .setContentText("You Have A New class Starting Today.")
                .setPriority(NotificationCompat.PRIORITY_HIGH);

        NotificationCompat.Builder endAlarm = new NotificationCompat.Builder(context, "endNotification")
                .setSmallIcon(R.drawable.ic_launcher_foreground)
                .setContentTitle("Course Notification")
                .setContentText("You Have A Course that Ends Today.")
                .setPriority(NotificationCompat.PRIORITY_HIGH);

        NotificationCompat.Builder assessmentAlarm = new NotificationCompat.Builder(context, "assessmentNotification")
                .setSmallIcon(R.drawable.ic_launcher_foreground)
                .setContentTitle("Assessment Notification")
                .setContentText("You Have An Assessment Due Today.")
                .setPriority(NotificationCompat.PRIORITY_HIGH);

        NotificationManagerCompat notificationManager = NotificationManagerCompat.from(context);

        notificationManager.notify(200,endAlarm.build());
        notificationManager.notify(201,startAlarm.build());
        notificationManager.notify(202,assessmentAlarm.build());
    }
}
