.class public final Le/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/OnNmeaMessageListener;
.implements Lu/f;
.implements Li0/a;


# static fields
.field public static final synthetic a:Le/b;

.field public static final synthetic b:Le/b;

.field public static final c:Le/b;

.field public static final synthetic d:Le/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/b;

    .line 2
    .line 3
    invoke-direct {v0}, Le/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Le/b;->a:Le/b;

    .line 7
    .line 8
    new-instance v0, Le/b;

    .line 9
    .line 10
    invoke-direct {v0}, Le/b;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Le/b;->b:Le/b;

    .line 14
    .line 15
    new-instance v0, Le/b;

    .line 16
    .line 17
    invoke-direct {v0}, Le/b;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Le/b;->c:Le/b;

    .line 21
    .line 22
    new-instance v0, Le/b;

    .line 23
    .line 24
    invoke-direct {v0}, Le/b;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Le/b;->d:Le/b;

    .line 28
    .line 29
    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/syu/carlink/base/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/syu/carlink/base/a;->c:Ls/a;

    .line 2
    .line 3
    invoke-interface {v0}, Ls/a;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/syu/carlink/base/a;

    .line 8
    .line 9
    return-object v0
.end method

.method public static b()Lcom/syu/carlink/CarLink;
    .locals 1

    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "me"

    invoke-static {v0}, Lt/b;->B(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public static c(Lcom/syu/carlink/CarLinkService;)Ll/e;
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Ll/e;->d:Ll/e;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ll/e;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Ll/e;-><init>(Lcom/syu/carlink/CarLinkService;)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Ll/e;->d:Ll/e;

    .line 16
    .line 17
    :cond_0
    sget-object p0, Ll/e;->d:Ll/e;

    .line 18
    .line 19
    invoke-static {p0}, Lt/b;->e(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-object p0
.end method

.method public static d(Landroid/hardware/usb/UsbDevice;)Z
    .locals 2

    .line 1
    const-string v0, "usbDevice"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Le/z;->a:Ljava/util/List;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    sget-object v0, Le/z;->b:Ljava/util/List;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-eqz p0, :cond_0

    .line 37
    .line 38
    const/4 p0, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 p0, 0x0

    .line 41
    :goto_0
    return p0
.end method

.method public static e(Landroid/hardware/usb/UsbDevice;)Z
    .locals 7

    .line 1
    const-string v0, "usbDevice"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    new-array v1, v0, [Ljava/lang/Class;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const-class v3, Ljava/lang/String;

    .line 11
    .line 12
    aput-object v3, v1, v2

    .line 13
    .line 14
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 15
    .line 16
    invoke-static {v3}, Lt/b;->e(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    aput-object v3, v1, v4

    .line 21
    .line 22
    new-array v0, v0, [Ljava/lang/Object;

    .line 23
    .line 24
    const-string v3, "ro.lsec.barebox"

    .line 25
    .line 26
    aput-object v3, v0, v2

    .line 27
    .line 28
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    aput-object v3, v0, v4

    .line 33
    .line 34
    const-string v3, "getInt"

    .line 35
    .line 36
    const-string v5, "android.os.SystemProperties"

    .line 37
    .line 38
    const/4 v6, 0x0

    .line 39
    invoke-static {v5, v6, v3, v1, v0}, Lp/a;->d(Ljava/lang/String;Landroid/net/wifi/WifiManager;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Ljava/lang/Integer;

    .line 44
    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    move v0, v2

    .line 53
    :goto_0
    if-eq v0, v4, :cond_1

    .line 54
    .line 55
    invoke-static {p0}, Le/b0;->a(Landroid/hardware/usb/UsbDevice;)Z

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    if-eqz p0, :cond_2

    .line 60
    .line 61
    :cond_1
    move v2, v4

    .line 62
    :cond_2
    return v2
.end method

.method public static f(Landroid/hardware/usb/UsbDevice;)Z
    .locals 2

    .line 1
    const-string v0, "usbDevice"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Le/c0;->a:Ljava/util/List;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    sget-object v0, Le/c0;->b:Ljava/util/List;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-eqz p0, :cond_0

    .line 37
    .line 38
    const/4 p0, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 p0, 0x0

    .line 41
    :goto_0
    return p0
.end method


# virtual methods
.method public onNmeaMessage(Ljava/lang/String;J)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    sget-object p2, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    iget-object p2, p2, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 14
    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    const/4 p3, 0x0

    .line 18
    new-array v0, p3, [I

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    new-array v1, v1, [Ljava/lang/String;

    .line 22
    .line 23
    aput-object p1, v1, p3

    .line 24
    .line 25
    const/16 p1, 0xe4

    .line 26
    .line 27
    invoke-virtual {p2, p1, v1, v0}, Lh/c;->n(I[Ljava/lang/String;[I)Z

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const-string p1, "me"

    .line 32
    .line 33
    invoke-static {p1}, Lt/b;->B(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    throw p1

    .line 38
    :cond_1
    :goto_0
    return-void
.end method
