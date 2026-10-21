.class Lcom/google/android/projection/sink/ui/MainActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/protocol/InputSource$OnInputFeedbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/projection/sink/ui/MainActivity;->startGAL(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/projection/sink/ui/MainActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/ui/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/ui/MainActivity$5;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInputFeedback(I)V
    .locals 2

    .line 1
    sget v0, Lcom/google/android/projection/protocol/InputSource;->FEEDBACK_EVENT_SELECT:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    new-array p1, v1, [J

    .line 7
    .line 8
    fill-array-data p1, :array_0

    .line 9
    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    sget v0, Lcom/google/android/projection/protocol/InputSource;->FEEDBACK_EVENT_FOCUS_CHANGE:I

    .line 13
    .line 14
    if-ne p1, v0, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    sget v0, Lcom/google/android/projection/protocol/InputSource;->FEEDBACK_EVENT_DRAG_SELECT:I

    .line 18
    .line 19
    if-ne p1, v0, :cond_2

    .line 20
    .line 21
    new-array p1, v1, [J

    .line 22
    .line 23
    fill-array-data p1, :array_1

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 28
    :goto_1
    if-eqz p1, :cond_3

    .line 29
    .line 30
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$5;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 31
    .line 32
    const-string v1, "vibrator"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Landroid/os/Vibrator;

    .line 39
    .line 40
    const/4 v1, -0x1

    .line 41
    invoke-virtual {v0, p1, v1}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 42
    .line 43
    .line 44
    :cond_3
    return-void

    .line 45
    :array_0
    .array-data 8
        0x0
        0x4b
    .end array-data

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    :array_1
    .array-data 8
        0x0
        0x4b
    .end array-data
.end method
