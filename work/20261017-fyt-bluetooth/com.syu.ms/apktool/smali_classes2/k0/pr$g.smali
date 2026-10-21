.class public Lk0/pr$g;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/pr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation


# instance fields
.field public final synthetic a:Lk0/pr;


# direct methods
.method public constructor <init>(Lk0/pr;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/pr$g;->a:Lk0/pr;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lk0/pr;Lk0/pr$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lk0/pr$g;-><init>(Lk0/pr;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    .line 2
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const-string p2, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    .line 3
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move p1, v0

    .line 4
    :goto_0
    iget-object p2, p0, Lk0/pr$g;->a:Lk0/pr;

    iget v2, p2, Lk0/pr;->k:I

    if-eq v2, p1, :cond_1

    .line 5
    iput p1, p2, Lk0/pr;->k:I

    const/4 v2, 0x6

    new-array v3, v2, [I

    const/16 v4, 0xe3

    aput v4, v3, v0

    const/16 v0, 0xc1

    aput v0, v3, v1

    const/4 v0, 0x2

    const/4 v1, 0x3

    aput v1, v3, v0

    aput p1, v3, v1

    const/4 p1, 0x4

    .line 6
    iget v0, p2, Lk0/pr;->m:I

    aput v0, v3, p1

    const/4 p1, 0x5

    iget p2, p2, Lk0/pr;->l:I

    shl-int/2addr p2, v2

    and-int/lit8 p2, p2, 0x40

    sget v0, Ly0/f;->C0:I

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr p2, v0

    aput p2, v3, p1

    invoke-static {v3}, Lz/k;->s([I)V

    :cond_1
    return-void
.end method
