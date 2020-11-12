.class public final synthetic Lwgu/SchedulerApp/-$$Lambda$CourseDetails$wFqBKntE0MUD6278VPcujWk8fKY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic f$0:Lwgu/SchedulerApp/CourseDetails;


# direct methods
.method public synthetic constructor <init>(Lwgu/SchedulerApp/CourseDetails;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwgu/SchedulerApp/-$$Lambda$CourseDetails$wFqBKntE0MUD6278VPcujWk8fKY;->f$0:Lwgu/SchedulerApp/CourseDetails;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12

    iget-object v0, p0, Lwgu/SchedulerApp/-$$Lambda$CourseDetails$wFqBKntE0MUD6278VPcujWk8fKY;->f$0:Lwgu/SchedulerApp/CourseDetails;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lwgu/SchedulerApp/CourseDetails;->lambda$onCreate$0$CourseDetails(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
