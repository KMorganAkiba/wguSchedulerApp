.class public Lwgu/SchedulerApp/EditCoursesActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "EditCoursesActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 12
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    const v0, 0x7f0d001f

    invoke-virtual {p0, v0}, Lwgu/SchedulerApp/EditCoursesActivity;->setContentView(I)V

    .line 14
    return-void
.end method
