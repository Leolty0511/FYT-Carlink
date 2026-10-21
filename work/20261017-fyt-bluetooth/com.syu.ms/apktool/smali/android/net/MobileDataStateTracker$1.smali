.class Landroid/net/MobileDataStateTracker$1;
.super Landroid/telephony/PhoneStateListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/MobileDataStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/net/MobileDataStateTracker;


# direct methods
.method public constructor <init>(Landroid/net/MobileDataStateTracker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/MobileDataStateTracker$1;->this$0:Landroid/net/MobileDataStateTracker;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/MobileDataStateTracker$1;->this$0:Landroid/net/MobileDataStateTracker;

    invoke-static {v0, p1}, Landroid/net/MobileDataStateTracker;->access$102(Landroid/net/MobileDataStateTracker;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;

    return-void
.end method
