.class Landroid/telephony/TelephonyManager$Listener$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/TelephonyManager$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/telephony/TelephonyManager$Listener;


# direct methods
.method public constructor <init>(Landroid/telephony/TelephonyManager$Listener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/telephony/TelephonyManager$Listener$1;->this$0:Landroid/telephony/TelephonyManager$Listener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/telephony/TelephonyManager$Listener$1;->this$0:Landroid/telephony/TelephonyManager$Listener;

    iget-object v0, v0, Landroid/telephony/TelephonyManager$Listener;->mListener:Landroid/telephony/CallStateListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Landroid/telephony/CallStateListener;->onCallStateChanged(IILjava/lang/String;)V

    return-void
.end method
