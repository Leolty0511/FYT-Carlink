.class Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter$CalendarGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CalendarGestureListener"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;


# direct methods
.method public constructor <init>(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter$CalendarGestureListener;->this$1:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
