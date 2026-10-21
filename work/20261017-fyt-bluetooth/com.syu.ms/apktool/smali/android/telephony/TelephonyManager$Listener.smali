.class Landroid/telephony/TelephonyManager$Listener;
.super Lr/e$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/TelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Listener"
.end annotation


# static fields
.field private static final WHAT:I = 0x1


# instance fields
.field private mHandler:Landroid/os/Handler;

.field public final mListener:Landroid/telephony/CallStateListener;


# direct methods
.method public constructor <init>(Landroid/telephony/CallStateListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lr/e$a;-><init>()V

    .line 2
    new-instance v0, Landroid/telephony/TelephonyManager$Listener$1;

    invoke-direct {v0, p0}, Landroid/telephony/TelephonyManager$Listener$1;-><init>(Landroid/telephony/TelephonyManager$Listener;)V

    iput-object v0, p0, Landroid/telephony/TelephonyManager$Listener;->mHandler:Landroid/os/Handler;

    .line 3
    iput-object p1, p0, Landroid/telephony/TelephonyManager$Listener;->mListener:Landroid/telephony/CallStateListener;

    return-void
.end method


# virtual methods
.method public clearQueue()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/telephony/TelephonyManager$Listener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/telephony/TelephonyManager$Listener;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public onUpdate(IILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/telephony/TelephonyManager$Listener;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
