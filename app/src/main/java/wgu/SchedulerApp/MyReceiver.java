package wgu.SchedulerApp;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Build;

import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationManagerCompat;

public class MyReceiver extends BroadcastReceiver {
    String channelId = "alarms";

    @Override
    public void onReceive(Context context, Intent intent) {
        createNotifyChannel(context,channelId);
        NotificationCompat.Builder alarm = new NotificationCompat.Builder(context, "alarms")
                .setSmallIcon(R.drawable.ic_launcher_foreground)
                .setContentTitle("Course Notification")
                .setContentText(intent.getStringExtra("key"))
                .setPriority(NotificationCompat.PRIORITY_HIGH);

        NotificationManagerCompat notificationManager = NotificationManagerCompat.from(context);

        notificationManager.notify(200,alarm.build());

    }

    private void createNotifyChannel(Context context, String channelId){
        if(Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            CharSequence name = "WGUTermReminderChannel";
            String desc = "Chanel for course reminder";
            int important = NotificationManager.IMPORTANCE_HIGH;
            NotificationChannel channel = new NotificationChannel(channelId, name, important);
            channel.setDescription(desc);

            NotificationManager notificationManager = context.getSystemService(NotificationManager.class);
            notificationManager.createNotificationChannel(channel);
        }
    }
}
