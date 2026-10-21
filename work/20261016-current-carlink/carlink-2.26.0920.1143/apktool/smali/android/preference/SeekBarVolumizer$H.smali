.class final Landroid/preference/SeekBarVolumizer$H;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/SeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "H"
.end annotation


# static fields
.field private static final UPDATE_SLIDER:I = 0x1


# instance fields
.field final synthetic this$0:Landroid/preference/SeekBarVolumizer;


# direct methods
.method private constructor <init>(Landroid/preference/SeekBarVolumizer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/preference/SeekBarVolumizer;Landroid/preference/SeekBarVolumizer$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/preference/SeekBarVolumizer$H;-><init>(Landroid/preference/SeekBarVolumizer;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    .line 7
    .line 8
    invoke-static {v0}, Landroid/preference/SeekBarVolumizer;->access$200(Landroid/preference/SeekBarVolumizer;)Landroid/widget/SeekBar;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    .line 15
    .line 16
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 17
    .line 18
    invoke-static {v0, v1}, Landroid/preference/SeekBarVolumizer;->access$302(Landroid/preference/SeekBarVolumizer;I)I

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    .line 22
    .line 23
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 24
    .line 25
    invoke-static {v0, v1}, Landroid/preference/SeekBarVolumizer;->access$402(Landroid/preference/SeekBarVolumizer;I)I

    .line 26
    .line 27
    .line 28
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p1, Ljava/lang/Boolean;

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    .line 37
    .line 38
    invoke-static {v0}, Landroid/preference/SeekBarVolumizer;->access$500(Landroid/preference/SeekBarVolumizer;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eq p1, v0, :cond_0

    .line 43
    .line 44
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    .line 45
    .line 46
    invoke-static {v0, p1}, Landroid/preference/SeekBarVolumizer;->access$502(Landroid/preference/SeekBarVolumizer;Z)Z

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    .line 50
    .line 51
    invoke-static {p1}, Landroid/preference/SeekBarVolumizer;->access$600(Landroid/preference/SeekBarVolumizer;)Landroid/preference/SeekBarVolumizer$Callback;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    if-eqz p1, :cond_0

    .line 56
    .line 57
    iget-object p1, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    .line 58
    .line 59
    invoke-static {p1}, Landroid/preference/SeekBarVolumizer;->access$600(Landroid/preference/SeekBarVolumizer;)Landroid/preference/SeekBarVolumizer$Callback;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    .line 64
    .line 65
    invoke-static {v0}, Landroid/preference/SeekBarVolumizer;->access$500(Landroid/preference/SeekBarVolumizer;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    .line 70
    .line 71
    invoke-static {v1}, Landroid/preference/SeekBarVolumizer;->access$700(Landroid/preference/SeekBarVolumizer;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    invoke-interface {p1, v0, v1}, Landroid/preference/SeekBarVolumizer$Callback;->onMuted(ZZ)V

    .line 76
    .line 77
    .line 78
    :cond_0
    iget-object p1, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/preference/SeekBarVolumizer;->updateSeekBar()V

    .line 81
    .line 82
    .line 83
    :cond_1
    return-void
.end method

.method public postUpdateSlider(IIZ)V
    .locals 1

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p3}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 p3, 0x1

    invoke-virtual {p0, p3, p1, p2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
