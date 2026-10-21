.class public Lh0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/util/regex/Pattern;

.field public static b:Ljava/lang/Runnable;

.field public static c:Ljava/lang/Runnable;

.field public static d:Ljava/lang/Runnable;

.field public static final e:Lo1/s;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lh0/e$a;

    invoke-direct {v0}, Lh0/e$a;-><init>()V

    sput-object v0, Lh0/e;->b:Ljava/lang/Runnable;

    .line 2
    new-instance v0, Lh0/e$b;

    invoke-direct {v0}, Lh0/e$b;-><init>()V

    sput-object v0, Lh0/e;->c:Ljava/lang/Runnable;

    .line 3
    new-instance v0, Lh0/e$c;

    invoke-direct {v0}, Lh0/e$c;-><init>()V

    sput-object v0, Lh0/e;->d:Ljava/lang/Runnable;

    .line 4
    new-instance v0, Lh0/e$d;

    invoke-direct {v0}, Lh0/e$d;-><init>()V

    sput-object v0, Lh0/e;->e:Lo1/s;

    return-void
.end method

.method public static A(I)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v2, 0x2

    if-eq p0, v2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget p0, Lh0/c;->M:I

    if-nez p0, :cond_1

    .line 2
    invoke-static {v1}, Lh0/e;->A(I)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {v0}, Lh0/e;->A(I)V

    goto :goto_0

    .line 4
    :cond_2
    invoke-static {v1}, Lh0/e;->z(I)V

    goto :goto_0

    .line 5
    :cond_3
    invoke-static {v0}, Lh0/e;->z(I)V

    :goto_0
    return-void
.end method

.method public static B(I)V
    .locals 3

    .line 1
    sget v0, Lh0/c;->z:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lh0/c;->z:I

    const/16 v0, 0x12

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Lh0/e;->W(I[I)V

    :cond_0
    return-void
.end method

.method public static final C()Z
    .locals 2

    .line 1
    sget v0, Lh0/c;->Z:I

    const v1, 0xffff

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static D()V
    .locals 9

    const-string v0, "func"

    const-string v1, "keyCode"

    const-string v2, "bleStreer"

    const-string v3, "BT"

    .line 1
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, La/f;->B()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/oem/ble_steers.config"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-nez v5, :cond_1

    .line 3
    :cond_0
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, La/f;->B()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/app/ble_steers.config"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_2

    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 5
    :try_start_0
    invoke-static {v4, v6, v5}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "load Str: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_6

    .line 7
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 9
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 11
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v2, :cond_3

    move v4, v6

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    :goto_0
    if-ge v6, v4, :cond_5

    .line 13
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 14
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 15
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 16
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load funcMap size : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 18
    sput-object v5, Lh0/c;->d:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_6
    :goto_1
    return-void

    :catch_0
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_2
    return-void
.end method

.method public static E(Ljava/lang/String;)V
    .locals 5

    .line 1
    sget-object v0, Lh0/c;->r:Ljava/lang/String;

    invoke-static {v0, p0}, Lo1/p0;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2
    sput-object p0, Lh0/c;->r:Ljava/lang/String;

    const/16 v0, 0xe

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 3
    invoke-static {v0, v2}, Lh0/e;->Y(I[Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lg/e;->a()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 5
    invoke-static {}, Lg/e;->a()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 6
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 8
    :goto_0
    array-length v2, p0

    if-ge v3, v2, :cond_3

    .line 9
    rem-int/lit8 v2, v3, 0x2

    if-eqz v2, :cond_2

    array-length v2, p0

    sub-int/2addr v2, v1

    if-ne v3, v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-char v4, p0, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    :goto_1
    aget-char v2, p0, v3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const-string/jumbo p0, "sys.bt.address"

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    return-void
.end method

.method public static F(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lh0/c;->u:Ljava/lang/String;

    invoke-static {v0, p0}, Lo1/p0;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sput-object p0, Lh0/c;->u:Ljava/lang/String;

    const/16 v0, 0xf

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Lh0/e;->Y(I[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static G(I)V
    .locals 3

    .line 1
    sget v0, Lh0/c;->S:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lh0/c;->S:I

    const/16 v0, 0x20

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Lh0/e;->W(I[I)V

    const/16 v0, 0x17e

    .line 4
    invoke-static {v0, p0}, Lm1/c;->e(II)I

    :cond_0
    return-void
.end method

.method public static declared-synchronized H(I)V
    .locals 3

    const-class v0, Lh0/e;

    monitor-enter v0

    .line 1
    :try_start_0
    sget v1, Lh0/c;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, p0, :cond_0

    monitor-exit v0

    return-void

    .line 2
    :cond_0
    :try_start_1
    sput p0, Lh0/c;->a:I

    .line 3
    sget-object v1, Lh0/c;->b:Lh0/f;

    invoke-interface {v1}, Lh0/f;->b()V

    const/4 v1, 0x1

    if-eq p0, v1, :cond_4

    const/4 v1, 0x3

    if-eq p0, v1, :cond_3

    const/4 v1, 0x4

    if-eq p0, v1, :cond_2

    const/4 v1, 0x5

    if-eq p0, v1, :cond_1

    .line 4
    new-instance p0, Lh0/f$a;

    invoke-direct {p0}, Lh0/f$a;-><init>()V

    sput-object p0, Lh0/c;->b:Lh0/f;

    goto :goto_0

    .line 5
    :cond_1
    new-instance p0, Lh0/a;

    invoke-direct {p0}, Lh0/a;-><init>()V

    sput-object p0, Lh0/c;->b:Lh0/f;

    goto :goto_0

    .line 6
    :cond_2
    new-instance p0, Lmodule/bt/CmdBtSG9832;

    invoke-direct {p0}, Lmodule/bt/CmdBtSG9832;-><init>()V

    sput-object p0, Lh0/c;->b:Lh0/f;

    goto :goto_0

    .line 7
    :cond_3
    new-instance p0, Lmodule/bt/CmdBtSofia;

    invoke-direct {p0}, Lmodule/bt/CmdBtSofia;-><init>()V

    sput-object p0, Lh0/c;->b:Lh0/f;

    goto :goto_0

    .line 8
    :cond_4
    new-instance p0, Lh0/b;

    invoke-direct {p0}, Lh0/b;-><init>()V

    sput-object p0, Lh0/c;->b:Lh0/f;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :goto_0
    :try_start_2
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v1, "property/calling_show_btapp.txt"

    invoke-virtual {p0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lq1/a;->c(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "com.lsec.calling_showapp"

    const-string v2, ""

    .line 10
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "|"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_5
    if-eqz p0, :cond_6

    .line 13
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 14
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    sput-object p0, Lh0/e;->a:Ljava/util/regex/Pattern;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 15
    :try_start_3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 16
    :cond_6
    :goto_1
    sget-object p0, Lh0/c;->b:Lh0/f;

    invoke-interface {p0}, Lh0/f;->a()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 17
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final declared-synchronized I(I)V
    .locals 5

    const-class v0, Lh0/e;

    monitor-enter v0

    .line 1
    :try_start_0
    sget v1, Lh0/c;->Z:I

    and-int/lit16 v2, v1, 0xff

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    or-int/2addr v1, p0

    .line 2
    sput v1, Lh0/c;->Z:I

    and-int/lit16 v1, v1, 0xff

    or-int/2addr p0, v1

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    if-eq v2, v3, :cond_2

    .line 3
    invoke-static {}, Ly0/h;->M()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final J(IZ)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  ==============>>> 00 BT Handle mute flag : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0xffff

    and-int v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mute "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " DataBt.mMuteFlag: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lh0/c;->Z:I

    and-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BT"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p0}, Lh0/e;->I(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0}, Lh0/e;->V(I)V

    .line 4
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "  ==============>>> 01 BT Handle mute DataBt.mMuteFlag: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lh0/c;->Z:I

    and-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static K()Z
    .locals 5

    .line 1
    invoke-static {}, Lo1/u;->Y0()Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-boolean v1, Lh0/c;->f:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    const/16 v4, 0x5f

    .line 3
    invoke-static {v4}, Ln0/k4;->f(I)Z

    move-result v4

    if-nez v4, :cond_3

    const/16 v4, 0x6b

    invoke-static {v4}, Ln0/k4;->f(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 4
    sget-object v1, Lh0/e;->a:Ljava/util/regex/Pattern;

    if-nez v1, :cond_1

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    invoke-static {}, Lo1/u;->Y0()Ljava/lang/String;

    move-result-object v1

    const-string v4, "com.syu.fourcamera2"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lh0/e;->a:Ljava/util/regex/Pattern;

    invoke-static {}, Lo1/u;->Y0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    move v1, v2

    .line 5
    :cond_3
    :goto_0
    invoke-static {v0}, La/i;->r(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    move v2, v3

    :cond_5
    :goto_1
    return v2
.end method

.method public static L(I)V
    .locals 2

    .line 1
    sput p0, Lh0/c;->O:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p0, v0, v1

    const/16 p0, 0x1d

    .line 2
    invoke-static {p0, v0}, Lh0/e;->W(I[I)V

    return-void
.end method

.method public static M(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lh0/c;->s:Ljava/lang/String;

    invoke-static {p0, v0}, Lo1/p0;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sput-object p0, Lh0/c;->s:Ljava/lang/String;

    const/16 v0, 0x2c

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Lh0/e;->Y(I[Ljava/lang/String;)V

    .line 4
    sget-object p0, Lh0/d;->f:Lo1/y;

    invoke-virtual {p0}, Lo1/y;->c()V

    :cond_0
    return-void
.end method

.method public static N(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lh0/c;->p:Ljava/lang/String;

    invoke-static {p0, v0}, Lo1/p0;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sput-object p0, Lh0/c;->p:Ljava/lang/String;

    .line 3
    sget-object v0, Lh0/d;->i:Lo1/y;

    invoke-virtual {v0}, Lo1/y;->c()V

    const/4 v0, 0x6

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 4
    invoke-static {v0, v1}, Lh0/e;->Y(I[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static O(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lh0/c;->q:Ljava/lang/String;

    invoke-static {p0, v0}, Lo1/p0;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sput-object p0, Lh0/c;->q:Ljava/lang/String;

    const/4 v0, 0x7

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Lh0/e;->Y(I[Ljava/lang/String;)V

    .line 4
    sget-object p0, Lh0/d;->e:Lo1/y;

    invoke-virtual {p0}, Lo1/y;->c()V

    :cond_0
    return-void
.end method

.method public static P(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lh0/c;->t:Ljava/lang/String;

    invoke-static {p0, v0}, Lo1/p0;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sput-object p0, Lh0/c;->t:Ljava/lang/String;

    const/16 v0, 0x2e

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Lh0/e;->Y(I[Ljava/lang/String;)V

    .line 4
    sget-object p0, Lh0/d;->g:Lo1/y;

    invoke-virtual {p0}, Lo1/y;->c()V

    :cond_0
    return-void
.end method

.method public static Q(I)V
    .locals 3

    .line 1
    sget v0, Lh0/c;->C:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lh0/c;->C:I

    const/16 v0, 0x2d

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Lh0/e;->W(I[I)V

    .line 4
    sget-object p0, Lh0/d;->h:Lo1/y;

    invoke-virtual {p0}, Lo1/y;->c()V

    :cond_0
    return-void
.end method

.method public static R(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lh0/c;->x:Ljava/lang/String;

    invoke-static {v0, p0}, Lo1/p0;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sput-object p0, Lh0/c;->x:Ljava/lang/String;

    const/16 v0, 0x17

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Lh0/e;->Y(I[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static S(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lh0/c;->v:Ljava/lang/String;

    invoke-static {v0, p0}, Lo1/p0;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sput-object p0, Lh0/c;->v:Ljava/lang/String;

    const/16 v0, 0x10

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Lh0/e;->Y(I[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static T(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Lo1/j0;->j:Lo1/j0;

    invoke-virtual {v0, p0}, Lo1/j0;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static U(J)V
    .locals 5

    .line 1
    sget-wide v0, Lh0/c;->e0:J

    cmp-long v0, v0, p0

    if-eqz v0, :cond_0

    .line 2
    sput-wide p0, Lh0/c;->e0:J

    const/16 v0, 0xb

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0x20

    shr-long v3, p0, v3

    long-to-int v3, v3

    aput v3, v1, v2

    const/4 v2, 0x1

    long-to-int p0, p0

    aput p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Lh0/e;->W(I[I)V

    :cond_0
    return-void
.end method

.method public static final declared-synchronized V(I)V
    .locals 6

    const-class v0, Lh0/e;

    monitor-enter v0

    .line 1
    :try_start_0
    sget v1, Lh0/c;->Z:I

    const v2, 0xffff

    and-int v3, v1, v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    not-int p0, p0

    and-int/2addr p0, v2

    and-int/2addr p0, v1

    .line 2
    sput p0, Lh0/c;->Z:I

    and-int/2addr p0, v2

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    if-eq v3, v4, :cond_2

    .line 3
    invoke-static {}, Ly0/h;->M()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static varargs W(I[I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0, v0}, Lh0/e;->X(I[I[F[Ljava/lang/String;)V

    return-void
.end method

.method public static X(I[I[F[Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lh0/g;->Y2()Lh0/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0, p1, p2, p3}, Lbase/b;->H0(I[I[F[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static varargs Y(I[Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, v0, p1}, Lh0/e;->X(I[I[F[Ljava/lang/String;)V

    return-void
.end method

.method public static varargs Z(II[Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x0

    .line 1
    invoke-static {p0, v0, p1, p2}, Lh0/e;->X(I[I[F[Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lh0/c;->j:Ljava/lang/String;

    .line 2
    sget-object p0, Lh0/d;->l:Lo1/y;

    invoke-virtual {p0}, Lo1/y;->c()V

    return-void
.end method

.method public static b([Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x5

    if-ge v1, v3, :cond_0

    .line 1
    sget-object v3, Lh0/c;->k:[Ljava/lang/String;

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_1

    .line 2
    sget-object v4, Lh0/c;->k:[Ljava/lang/String;

    aget-object v5, p0, v1

    aput-object v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/16 p0, 0x415

    new-array v1, v3, [Ljava/lang/String;

    .line 3
    sget-object v3, Lh0/c;->k:[Ljava/lang/String;

    aget-object v4, v3, v0

    aput-object v4, v1, v0

    const/4 v0, 0x1

    aget-object v4, v3, v0

    aput-object v4, v1, v0

    const/4 v0, 0x2

    aget-object v4, v3, v0

    aput-object v4, v1, v0

    const/4 v0, 0x3

    aget-object v4, v3, v0

    aput-object v4, v1, v0

    const/4 v0, 0x4

    aget-object v3, v3, v0

    aput-object v3, v1, v0

    invoke-static {p0, v2, v2, v1}, Lk0/qt;->A0(I[I[F[Ljava/lang/String;)V

    .line 4
    sget-object p0, Lh0/d;->k:Lo1/y;

    invoke-virtual {p0}, Lo1/y;->c()V

    return-void
.end method

.method public static c(I)V
    .locals 3

    .line 1
    sget v0, Lh0/c;->T:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lh0/c;->T:I

    const/16 v0, 0x22

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Lh0/e;->W(I[I)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "A2DP\u72b6\u6001\u53d1\u7ed9UI\u663e\u793a = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "bt"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Lo1/j0;->j:Lo1/j0;

    invoke-virtual {v0, p0}, Lo1/j0;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static e(I)V
    .locals 3

    .line 1
    sget v0, Lh0/c;->A:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lh0/c;->A:I

    const/16 v0, 0x14

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Lh0/e;->W(I[I)V

    const/16 v0, 0x8d

    .line 4
    invoke-static {v0, p0}, Lm1/c;->g(II)V

    :cond_0
    return-void
.end method

.method public static f(I)V
    .locals 0

    .line 1
    invoke-static {p0}, Lh0/e;->e(I)V

    return-void
.end method

.method public static g(I)V
    .locals 3

    .line 1
    sget v0, Lh0/c;->D:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lh0/c;->D:I

    const/16 v0, 0x44

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Lh0/e;->W(I[I)V

    :cond_0
    return-void
.end method

.method public static h(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v0

    .line 1
    :goto_0
    sget v2, Lh0/c;->W:I

    if-eq v2, p0, :cond_1

    .line 2
    sput p0, Lh0/c;->W:I

    const/16 v2, 0x3a

    new-array v1, v1, [I

    aput p0, v1, v0

    .line 3
    invoke-static {v2, v1}, Lh0/e;->W(I[I)V

    :cond_1
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lh0/c;->n:Ljava/lang/String;

    invoke-static {v0, p0}, Lo1/p0;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sput-object p0, Lh0/c;->n:Ljava/lang/String;

    const/16 v0, 0x1a

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Lh0/e;->Y(I[Ljava/lang/String;)V

    .line 4
    :cond_0
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const-string v0, ""

    .line 5
    invoke-static {p0, v0}, Lu0/d;->J0(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static j(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lh0/c;->m:Ljava/lang/String;

    invoke-static {v0, p0}, Lo1/p0;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sput-object p0, Lh0/c;->m:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Lh0/e;->Y(I[Ljava/lang/String;)V

    .line 4
    :cond_0
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 5
    invoke-static {p0}, Lu0/d;->K0(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static k(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lh0/c;->l:Ljava/lang/String;

    invoke-static {v0, p0}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sput-object p0, Lh0/c;->l:Ljava/lang/String;

    .line 3
    sget-object v0, Lh0/d;->n:Lo1/y;

    invoke-virtual {v0}, Lo1/y;->c()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 4
    invoke-static {v1, v0}, Lh0/e;->Y(I[Ljava/lang/String;)V

    .line 5
    :cond_0
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 6
    invoke-static {p0}, Lu0/d;->L0(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static l(I)V
    .locals 3

    .line 1
    sget v0, Lh0/c;->N:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lh0/c;->N:I

    .line 3
    sget-object v0, Lh0/d;->m:Lo1/y;

    invoke-virtual {v0}, Lo1/y;->c()V

    const/16 v0, 0xd

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 4
    invoke-static {v0, v1}, Lh0/e;->W(I[I)V

    .line 5
    invoke-static {}, Ly0/h;->M()V

    .line 6
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u84dd\u7259\u97f3\u4e50\u64ad\u653e\u72b6\u6001 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ln1/b;->s(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static m(I)V
    .locals 3

    .line 1
    sget v0, Lh0/c;->H:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lh0/c;->H:I

    const/16 v0, 0x1c

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Lh0/e;->W(I[I)V

    :cond_0
    return-void
.end method

.method public static n(I)V
    .locals 3

    .line 1
    sget v0, Lh0/c;->J:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lh0/c;->J:I

    const/4 v0, 0x3

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Lh0/e;->W(I[I)V

    :cond_0
    return-void
.end method

.method public static o(I)V
    .locals 3

    .line 1
    sget v0, Lh0/c;->I:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lh0/c;->I:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Lh0/e;->W(I[I)V

    .line 4
    sget p0, Lh0/c;->H:I

    sget v0, Lh0/c;->I:I

    if-le p0, v0, :cond_0

    .line 5
    invoke-static {v2}, Lh0/e;->m(I)V

    :cond_0
    return-void
.end method

.method public static p(I)V
    .locals 3

    .line 1
    sget v0, Lh0/c;->K:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lh0/c;->K:I

    const/4 v0, 0x4

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Lh0/e;->W(I[I)V

    :cond_0
    return-void
.end method

.method public static q(Ljava/lang/String;)V
    .locals 3

    .line 1
    sput-object p0, Lh0/c;->h:Ljava/lang/String;

    .line 2
    invoke-static {p0}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    aput-object p0, v0, v2

    .line 3
    sput-object v0, Lh0/c;->i:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    sput-object v0, Lh0/c;->i:[Ljava/lang/String;

    .line 5
    :goto_0
    sput-boolean v2, Lh0/c;->e:Z

    const/16 v0, 0x8

    new-array v1, v1, [Ljava/lang/String;

    aput-object p0, v1, v2

    .line 6
    invoke-static {v0, v1}, Lh0/e;->Y(I[Ljava/lang/String;)V

    .line 7
    sget-object v0, Lh0/d;->c:Lo1/y;

    invoke-virtual {v0}, Lo1/y;->c()V

    .line 8
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PHONE TO UI NUMBER = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln1/b;->s(Ljava/lang/String;)V

    .line 9
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    const-string/jumbo v0, "sys.btphone.number"

    .line 10
    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public static r([Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    .line 1
    aget-object v1, p0, v0

    sput-object v1, Lh0/c;->h:Ljava/lang/String;

    .line 2
    sput-object p0, Lh0/c;->i:[Ljava/lang/String;

    .line 3
    array-length v1, p0

    if-le v1, v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sput-boolean v1, Lh0/c;->e:Z

    const/16 v1, 0x8

    .line 4
    invoke-static {v1, p0}, Lh0/e;->Y(I[Ljava/lang/String;)V

    .line 5
    sget-object v1, Lh0/d;->c:Lo1/y;

    invoke-virtual {v1}, Lo1/y;->c()V

    .line 6
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PHONE TO UI NUMBER = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ln1/b;->s(Ljava/lang/String;)V

    .line 7
    aget-object v1, p0, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 8
    aget-object p0, p0, v0

    const-string/jumbo v0, "sys.btphone.number"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static s(I)V
    .locals 11

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "btPhoneState ---------->> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BT"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget v0, Lh0/c;->E:I

    if-eq v0, p0, :cond_10

    .line 3
    sput v0, Lh0/c;->F:I

    .line 4
    sput p0, Lh0/c;->E:I

    const/4 v0, 0x3

    const-string/jumbo v1, "syu.bt.show.pip"

    const/4 v2, 0x5

    const/4 v3, 0x4

    const-string/jumbo v4, "syu.bt.calling.unmute"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq p0, v0, :cond_4

    if-eq p0, v3, :cond_4

    if-eq p0, v2, :cond_4

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    sget v0, Lh0/c;->G:I

    if-eqz v0, :cond_d

    const/16 v0, 0x8

    .line 6
    invoke-static {v0, v6}, Lh0/e;->J(IZ)V

    .line 7
    sput v5, Lh0/c;->G:I

    .line 8
    invoke-static {v4, v5}, Lo1/s0;->l(Ljava/lang/String;Z)Z

    move-result v0

    const-string v7, "false"

    if-eqz v0, :cond_1

    .line 9
    invoke-static {v4, v7}, Lo1/s0;->F(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x3

    .line 10
    invoke-static {v0}, Ly0/h;->u0(I)V

    .line 11
    :cond_1
    invoke-static {v1, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    sget-object v0, Lh0/d;->b:Lo1/y;

    invoke-virtual {v0}, Lo1/y;->c()V

    .line 13
    invoke-static {}, Ly0/h;->M()V

    .line 14
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 15
    sget-object v0, Lu0/b;->c:Lu0/h;

    sget v1, Lh0/c;->L:I

    invoke-interface {v0, v1}, Lu0/h;->c(I)V

    .line 16
    :cond_2
    sget v0, Lu0/b;->a0:I

    if-eqz v0, :cond_3

    sget v0, Lu0/b;->f:I

    if-eqz v0, :cond_3

    sget v0, Lh0/c;->X:I

    if-eqz v0, :cond_3

    .line 17
    invoke-static {v6}, Lu0/d;->u3(I)V

    .line 18
    :cond_3
    sput-boolean v6, Lh0/c;->k0:Z

    .line 19
    sget-object v0, Lh0/e;->b:Ljava/lang/Runnable;

    invoke-static {v0}, Lo1/j;->f(Ljava/lang/Runnable;)V

    .line 20
    sget-object v0, Lh0/e;->b:Ljava/lang/Runnable;

    const-wide/16 v7, 0x7d0

    invoke-static {v0, v7, v8}, Lo1/j;->c(Ljava/lang/Runnable;J)V

    goto/16 :goto_3

    :cond_4
    :goto_0
    const-wide/16 v7, 0x0

    if-ne p0, v3, :cond_5

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Lh0/e;->U(J)V

    .line 22
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    sput-wide v9, Lh0/c;->f0:J

    .line 23
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    sget-object v9, Lh0/e;->d:Ljava/lang/Runnable;

    invoke-static {v0, v9}, Lo1/j;->e(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 24
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    sget-object v9, Lh0/e;->d:Ljava/lang/Runnable;

    invoke-static {v0, v9, v7, v8}, Lo1/j;->b(Landroid/os/Handler;Ljava/lang/Runnable;J)V

    goto :goto_1

    :cond_5
    if-ne p0, v2, :cond_6

    .line 25
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    sput-wide v9, Lh0/c;->g0:J

    .line 26
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    sget-object v9, Lh0/e;->c:Ljava/lang/Runnable;

    invoke-static {v0, v9, v7, v8}, Lo1/j;->b(Landroid/os/Handler;Ljava/lang/Runnable;J)V

    .line 27
    :cond_6
    :goto_1
    sget v0, Lh0/c;->G:I

    if-nez v0, :cond_d

    .line 28
    sget-object v0, Lh0/e;->b:Ljava/lang/Runnable;

    invoke-static {v0}, Lo1/j;->f(Ljava/lang/Runnable;)V

    .line 29
    sget-object v0, Lh0/e;->b:Ljava/lang/Runnable;

    const-wide/16 v7, 0x3e8

    invoke-static {v0, v7, v8}, Lo1/j;->c(Ljava/lang/Runnable;J)V

    .line 30
    sput v6, Lh0/c;->G:I

    .line 31
    invoke-static {}, Ly0/h;->M()V

    const/16 v0, 0x3d

    .line 32
    invoke-static {v0}, Lg/e;->j(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 33
    invoke-static {v6}, Ln0/k4;->f(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 34
    :cond_7
    invoke-static {v5}, Lu0/d;->N(I)V

    .line 35
    :cond_8
    sget-object v0, Lh0/d;->b:Lo1/y;

    invoke-virtual {v0}, Lo1/y;->c()V

    .line 36
    sget v0, Lu0/b;->D:I

    sput v0, Lh0/c;->L:I

    .line 37
    sget v0, Lu0/b;->h:I

    sput v0, Lh0/c;->X:I

    .line 38
    sget v0, Lu0/b;->h:I

    if-eqz v0, :cond_9

    .line 39
    invoke-static {v5}, Lu0/d;->u3(I)V

    .line 40
    :cond_9
    invoke-static {}, Lh0/e;->K()Z

    move-result v0

    const-string/jumbo v7, "true"

    if-eqz v0, :cond_a

    .line 41
    invoke-static {v1, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_a
    sget-boolean v1, Lh0/c;->k0:Z

    if-eqz v1, :cond_c

    if-eqz v0, :cond_b

    .line 43
    invoke-static {}, Lo1/u;->t()V

    goto :goto_2

    .line 44
    :cond_b
    invoke-static {}, Lo1/u;->s()V

    .line 45
    :cond_c
    :goto_2
    sget v0, Ly0/f;->i:I

    if-ne v0, v6, :cond_d

    invoke-static {v4, v5}, Lo1/s0;->l(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_d

    .line 46
    invoke-static {v4, v7}, Lo1/s0;->F(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x4

    .line 47
    invoke-static {v0}, Ly0/h;->u0(I)V

    .line 48
    :cond_d
    :goto_3
    sget v0, Lh0/c;->F:I

    if-ne v0, v2, :cond_e

    .line 49
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    sget-object v1, Lh0/e;->c:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lo1/j;->e(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_4

    :cond_e
    if-ne v0, v3, :cond_f

    .line 50
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    sget-object v1, Lh0/e;->d:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lo1/j;->e(Landroid/os/Handler;Ljava/lang/Runnable;)V

    :cond_f
    :goto_4
    const/16 v0, 0x9

    new-array v1, v6, [I

    aput p0, v1, v5

    .line 51
    invoke-static {v0, v1}, Lh0/e;->W(I[I)V

    .line 52
    sget-object p0, Lh0/d;->a:Lo1/y;

    invoke-virtual {p0}, Lo1/y;->c()V

    :cond_10
    return-void
.end method

.method public static t(I)V
    .locals 3

    .line 1
    sget v0, Lh0/c;->Q:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lh0/c;->Q:I

    const/16 v0, 0x1f

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Lh0/e;->W(I[I)V

    :cond_0
    return-void
.end method

.method public static u(I)V
    .locals 3

    .line 1
    sget v0, Lh0/c;->b0:I

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lo1/o0;->a(III)I

    move-result p0

    .line 2
    sget v0, Lh0/c;->a0:I

    if-eq v0, p0, :cond_0

    .line 3
    sput p0, Lh0/c;->a0:I

    const/16 v0, 0x21

    const/4 v2, 0x1

    new-array v2, v2, [I

    aput p0, v2, v1

    .line 4
    invoke-static {v0, v2}, Lh0/e;->W(I[I)V

    .line 5
    invoke-static {}, Ly0/h;->M()V

    const/16 v0, 0x9a

    .line 6
    invoke-static {v0, p0}, Lm1/c;->g(II)V

    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lh0/c;->w:Ljava/lang/String;

    invoke-static {v0, p0}, Lo1/p0;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sput-object p0, Lh0/c;->w:Ljava/lang/String;

    const/16 v0, 0x11

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Lh0/e;->Y(I[Ljava/lang/String;)V

    const-string/jumbo v0, "sys.fyt.bt_version"

    .line 4
    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static final w(I)Z
    .locals 1

    .line 1
    sget v0, Lh0/c;->Z:I

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static x()Ljava/lang/Runnable;
    .locals 1

    .line 1
    sget-object v0, Lh0/e;->b:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static y(Ljava/lang/String;)Z
    .locals 2

    .line 1
    sget-object v0, Lh0/c;->d:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    sget-object v1, Lh0/c;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Lc/e;->c(I)Z

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static z(I)V
    .locals 3

    .line 1
    sget v0, Lh0/c;->M:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lh0/c;->M:I

    const/16 v0, 0xa

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Lh0/e;->W(I[I)V

    :cond_0
    return-void
.end method
