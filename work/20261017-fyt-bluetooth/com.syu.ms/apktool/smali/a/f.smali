.class public La/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Landroid/hardware/display/DisplayManager;

.field public static b:Landroid/graphics/Point;

.field public static c:Landroid/location/LocationManager;

.field public static d:Landroid/view/View;

.field public static e:Landroid/view/WindowManager$LayoutParams;

.field public static f:Ln1/e;

.field public static g:Lui/b;

.field public static h:Lui/b;

.field public static i:Ln1/d;

.field public static j:Ln1/b;

.field public static k:Ln1/c;

.field public static l:Landroid/content/res/AssetManager;

.field public static m:Landroid/content/res/Resources;

.field public static n:Landroid/content/pm/PackageManager;

.field public static o:Landroid/app/ActivityManager;

.field public static p:Landroid/view/WindowManager;

.field public static q:Landroid/media/AudioManager;

.field public static r:Landroid/os/PowerManager;

.field public static s:Landroid/view/IWindowManager;

.field public static t:Landroid/net/wifi/WifiManager;

.field public static u:Landroid/hardware/input/InputManager;

.field public static v:Landroid/content/ContentResolver;

.field public static w:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sput-object v0, La/f;->b:Landroid/graphics/Point;

    return-void
.end method

.method public static A(Landroid/app/Application;)V
    .locals 2

    const-string v0, "input"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    sput-object v0, La/f;->u:Landroid/hardware/input/InputManager;

    .line 2
    new-instance v0, Ln1/e;

    invoke-direct {v0, p0}, Ln1/e;-><init>(Landroid/content/Context;)V

    sput-object v0, La/f;->f:Ln1/e;

    .line 3
    new-instance v0, Ln1/d;

    invoke-direct {v0, p0}, Ln1/d;-><init>(Landroid/content/Context;)V

    sput-object v0, La/f;->i:Ln1/d;

    .line 4
    new-instance v0, Ln1/b;

    invoke-direct {v0, p0}, Ln1/b;-><init>(Landroid/content/Context;)V

    sput-object v0, La/f;->j:Ln1/b;

    .line 5
    new-instance v0, Ln1/c;

    invoke-direct {v0, p0}, Ln1/c;-><init>(Landroid/content/Context;)V

    sput-object v0, La/f;->k:Ln1/c;

    .line 6
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    sput-object v0, La/f;->l:Landroid/content/res/AssetManager;

    .line 7
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, La/f;->m:Landroid/content/res/Resources;

    .line 8
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sput-object v0, La/f;->n:Landroid/content/pm/PackageManager;

    .line 9
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    sput-object v0, La/f;->s:Landroid/view/IWindowManager;

    const-string v0, "display"

    .line 10
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    sput-object v0, La/f;->a:Landroid/hardware/display/DisplayManager;

    const-string v0, "activity"

    .line 11
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    sput-object v0, La/f;->o:Landroid/app/ActivityManager;

    const-string/jumbo v0, "window"

    .line 12
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    sput-object v0, La/f;->p:Landroid/view/WindowManager;

    const-string v0, "audio"

    .line 13
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, La/f;->q:Landroid/media/AudioManager;

    .line 14
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, La/f;->v:Landroid/content/ContentResolver;

    const-string/jumbo v0, "wifi"

    .line 15
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    sput-object v0, La/f;->t:Landroid/net/wifi/WifiManager;

    const-string v0, "power"

    .line 16
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    sput-object v0, La/f;->r:Landroid/os/PowerManager;

    .line 17
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sput-object v0, La/f;->d:Landroid/view/View;

    const-string v0, "location"

    .line 18
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    sput-object v0, La/f;->c:Landroid/location/LocationManager;

    .line 19
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, La/f;->w:Landroid/os/Handler;

    .line 20
    sget-object v0, La/f;->p:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    sget-object v1, La/f;->b:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 21
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 22
    invoke-static {}, La/f;->w()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 23
    invoke-static {}, La/f;->i()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, 0x1

    .line 24
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 25
    invoke-static {}, Lo1/q0;->v()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.syu.panoramic"

    invoke-static {p0, v1}, Lo1/u;->k0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x7e0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p0, 0x7d6

    .line 26
    :goto_1
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 p0, 0x38

    .line 27
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 28
    sput-object v0, La/f;->e:Landroid/view/WindowManager$LayoutParams;

    .line 29
    sget-object p0, Lu0/b;->B3:Ljava/lang/String;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const-string p0, "persist.sys.syu.thirdplayer"

    const-string v0, ""

    .line 30
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lu0/b;->B3:Ljava/lang/String;

    .line 31
    :cond_3
    new-instance p0, La/f$a;

    invoke-direct {p0}, La/f$a;-><init>()V

    invoke-static {p0}, La/f;->E(Landroid/view/IRotationWatcher;)I

    return-void
.end method

.method public static B()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "ro.build.version.sdk"

    const/16 v1, 0x10

    .line 1
    invoke-static {v0, v1}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    const-string v0, "/odm"

    goto :goto_0

    :cond_0
    const-string v0, "/oem"

    :goto_0
    return-object v0
.end method

.method public static C(Lui/b;)V
    .locals 0

    .line 1
    sput-object p0, La/f;->h:Lui/b;

    return-void
.end method

.method public static D(Lui/b;)V
    .locals 0

    .line 1
    sput-object p0, La/f;->g:Lui/b;

    return-void
.end method

.method public static E(Landroid/view/IRotationWatcher;)I
    .locals 6

    const-string/jumbo v0, "watchRotation"

    .line 1
    :try_start_0
    invoke-static {}, La/f;->j()Landroid/view/IWindowManager;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, La/f;->o(Ljava/lang/Class;Ljava/lang/String;)[Ljava/lang/Class;

    move-result-object v1

    .line 3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lt v2, v3, :cond_0

    .line 4
    new-instance v2, Lj1/c;

    invoke-direct {v2, v0}, Lj1/c;-><init>(Ljava/lang/String;)V

    sget-object v0, La/f;->s:Landroid/view/IWindowManager;

    invoke-virtual {v2, v0}, Lj1/c;->g(Ljava/lang/Object;)Lj1/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lj1/c;->c([Ljava/lang/Class;)Lj1/c;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v4

    invoke-virtual {v0, v1}, Lj1/c;->d([Ljava/lang/Object;)Lj1/c;

    move-result-object p0

    invoke-virtual {p0}, Lj1/c;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v2, Lj1/c;

    invoke-direct {v2, v0}, Lj1/c;-><init>(Ljava/lang/String;)V

    sget-object v0, La/f;->s:Landroid/view/IWindowManager;

    invoke-virtual {v2, v0}, Lj1/c;->g(Ljava/lang/Object;)Lj1/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lj1/c;->c([Ljava/lang/Class;)Lj1/c;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p0, v1, v5

    invoke-virtual {v0, v1}, Lj1/c;->d([Ljava/lang/Object;)Lj1/c;

    move-result-object p0

    invoke-virtual {p0}, Lj1/c;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static synthetic a()Landroid/graphics/Point;
    .locals 1

    .line 1
    sget-object v0, La/f;->b:Landroid/graphics/Point;

    return-object v0
.end method

.method public static synthetic b()Landroid/view/WindowManager;
    .locals 1

    .line 1
    sget-object v0, La/f;->p:Landroid/view/WindowManager;

    return-object v0
.end method

.method public static synthetic c()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .line 1
    sget-object v0, La/f;->e:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public static d()Landroid/app/ActivityManager;
    .locals 1

    .line 1
    sget-object v0, La/f;->o:Landroid/app/ActivityManager;

    return-object v0
.end method

.method public static e()Landroid/content/res/AssetManager;
    .locals 1

    .line 1
    sget-object v0, La/f;->l:Landroid/content/res/AssetManager;

    return-object v0
.end method

.method public static f()Landroid/media/AudioManager;
    .locals 2

    .line 1
    sget-object v0, La/f;->q:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, La/f;->q:Landroid/media/AudioManager;

    .line 3
    :cond_0
    sget-object v0, La/f;->q:Landroid/media/AudioManager;

    return-object v0
.end method

.method public static g()Landroid/content/ContentResolver;
    .locals 1

    .line 1
    sget-object v0, La/f;->v:Landroid/content/ContentResolver;

    return-object v0
.end method

.method public static h()Landroid/hardware/display/DisplayManager;
    .locals 1

    .line 1
    sget-object v0, La/f;->a:Landroid/hardware/display/DisplayManager;

    return-object v0
.end method

.method public static i()I
    .locals 1

    .line 1
    sget-object v0, La/f;->b:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    return v0
.end method

.method public static j()Landroid/view/IWindowManager;
    .locals 1

    .line 1
    sget-object v0, La/f;->s:Landroid/view/IWindowManager;

    return-object v0
.end method

.method public static k()Ln1/c;
    .locals 1

    .line 1
    sget-object v0, La/f;->k:Ln1/c;

    return-object v0
.end method

.method public static l()Landroid/hardware/input/InputManager;
    .locals 1

    .line 1
    sget-object v0, La/f;->u:Landroid/hardware/input/InputManager;

    return-object v0
.end method

.method public static m()Landroid/location/LocationManager;
    .locals 1

    .line 1
    sget-object v0, La/f;->c:Landroid/location/LocationManager;

    return-object v0
.end method

.method public static n()Landroid/os/Handler;
    .locals 1

    .line 1
    sget-object v0, La/f;->w:Landroid/os/Handler;

    return-object v0
.end method

.method public static o(Ljava/lang/Class;Ljava/lang/String;)[Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    .line 2
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 3
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static p()Ln1/b;
    .locals 1

    .line 1
    sget-object v0, La/f;->j:Ln1/b;

    return-object v0
.end method

.method public static q()Landroid/content/pm/PackageManager;
    .locals 1

    .line 1
    sget-object v0, La/f;->n:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method public static r()Landroid/os/PowerManager;
    .locals 1

    .line 1
    sget-object v0, La/f;->r:Landroid/os/PowerManager;

    return-object v0
.end method

.method public static s()Landroid/view/View;
    .locals 1

    .line 1
    sget-object v0, La/f;->d:Landroid/view/View;

    return-object v0
.end method

.method public static t()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .line 1
    sget-object v0, La/f;->e:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public static u()Lui/b;
    .locals 1

    .line 1
    sget-object v0, La/f;->h:Lui/b;

    return-object v0
.end method

.method public static v()Lui/b;
    .locals 1

    .line 1
    sget-object v0, La/f;->g:Lui/b;

    return-object v0
.end method

.method public static w()I
    .locals 1

    .line 1
    sget-object v0, La/f;->b:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    return v0
.end method

.method public static x()Landroid/net/wifi/WifiManager;
    .locals 1

    .line 1
    sget-object v0, La/f;->t:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method public static y()Landroid/view/WindowManager;
    .locals 1

    .line 1
    sget-object v0, La/f;->p:Landroid/view/WindowManager;

    return-object v0
.end method

.method public static z()Ln1/e;
    .locals 1

    .line 1
    sget-object v0, La/f;->f:Ln1/e;

    return-object v0
.end method
