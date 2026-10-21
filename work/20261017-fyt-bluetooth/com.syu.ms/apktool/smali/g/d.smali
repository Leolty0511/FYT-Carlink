.class public Lg/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/g;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field public static t:Z = false

.field public static u:I = -0x1


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Z

.field public d:Z

.field public e:Ljava/lang/Runnable;

.field public final f:Ljava/lang/Runnable;

.field public g:Ljava/lang/Runnable;

.field public final h:Landroid/os/UEventObserver;

.field public i:Ljava/lang/Runnable;

.field public j:Ljava/lang/Runnable;

.field public k:Ljava/lang/Runnable;

.field public l:Ljava/lang/Runnable;

.field public m:I

.field public n:I

.field public o:Z

.field public p:Ljava/lang/Runnable;

.field public final q:Ljava/lang/Runnable;

.field public r:Landroid/media/MediaPlayer;

.field public s:Landroid/media/AudioTrack;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ChipSofia"

    .line 2
    iput-object v0, p0, Lg/d;->a:Ljava/lang/String;

    const/16 v0, 0x1f40

    .line 3
    iput v0, p0, Lg/d;->b:I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lg/d;->c:Z

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lg/d;->d:Z

    .line 6
    new-instance v1, Lg/d$d;

    invoke-direct {v1, p0}, Lg/d$d;-><init>(Lg/d;)V

    iput-object v1, p0, Lg/d;->e:Ljava/lang/Runnable;

    .line 7
    new-instance v1, Lg/d$e;

    invoke-direct {v1, p0}, Lg/d$e;-><init>(Lg/d;)V

    iput-object v1, p0, Lg/d;->f:Ljava/lang/Runnable;

    .line 8
    new-instance v1, Lg/d$f;

    invoke-direct {v1, p0}, Lg/d$f;-><init>(Lg/d;)V

    iput-object v1, p0, Lg/d;->g:Ljava/lang/Runnable;

    .line 9
    new-instance v1, Lg/d$g;

    invoke-direct {v1, p0}, Lg/d$g;-><init>(Lg/d;)V

    iput-object v1, p0, Lg/d;->h:Landroid/os/UEventObserver;

    .line 10
    new-instance v1, Lg/d$h;

    invoke-direct {v1, p0}, Lg/d$h;-><init>(Lg/d;)V

    iput-object v1, p0, Lg/d;->i:Ljava/lang/Runnable;

    .line 11
    new-instance v1, Lg/d$i;

    invoke-direct {v1, p0}, Lg/d$i;-><init>(Lg/d;)V

    iput-object v1, p0, Lg/d;->j:Ljava/lang/Runnable;

    .line 12
    new-instance v1, Lg/d$j;

    invoke-direct {v1, p0}, Lg/d$j;-><init>(Lg/d;)V

    iput-object v1, p0, Lg/d;->k:Ljava/lang/Runnable;

    .line 13
    new-instance v1, Lg/d$k;

    invoke-direct {v1, p0}, Lg/d$k;-><init>(Lg/d;)V

    iput-object v1, p0, Lg/d;->l:Ljava/lang/Runnable;

    const/4 v1, -0x1

    .line 14
    iput v1, p0, Lg/d;->m:I

    .line 15
    iput v1, p0, Lg/d;->n:I

    .line 16
    iput-boolean v0, p0, Lg/d;->o:Z

    .line 17
    new-instance v0, Lg/d$a;

    invoke-direct {v0, p0}, Lg/d$a;-><init>(Lg/d;)V

    iput-object v0, p0, Lg/d;->p:Ljava/lang/Runnable;

    .line 18
    new-instance v0, Lg/d$b;

    invoke-direct {v0, p0}, Lg/d$b;-><init>(Lg/d;)V

    iput-object v0, p0, Lg/d;->q:Ljava/lang/Runnable;

    return-void
.end method

.method public static I(I)V
    .locals 3

    .line 1
    sget-boolean v0, Ln1/b;->m:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    const-string v1, "/sys/kernel/debug/intel_otg/mode"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    if-nez p0, :cond_1

    const-string p0, "host"

    .line 3
    invoke-virtual {v0, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 4
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p0

    const-string/jumbo v1, "setMode = host"

    invoke-virtual {p0, v1}, Ln1/b;->s(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne p0, v1, :cond_3

    const-string/jumbo p0, "ro.build.version.sdk"

    .line 5
    invoke-static {p0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x17

    const-string v2, "none"

    if-ne p0, v1, :cond_2

    .line 6
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v0, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 8
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p0

    const-string/jumbo v1, "setMode = none"

    invoke-virtual {p0, v1}, Ln1/b;->s(Ljava/lang/String;)V

    .line 9
    :cond_3
    :goto_0
    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V

    .line 10
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static synthetic c(Lg/d;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lg/d;->c:Z

    return p0
.end method

.method public static synthetic d(Lg/d;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lg/d;->A()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lg/d;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/d;->i:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic f(Lg/d;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/d;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic g(Lg/d;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lg/d;->H()V

    return-void
.end method

.method public static synthetic h(Lg/d;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lg/d;->o:Z

    return p0
.end method

.method public static synthetic i(Lg/d;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lg/d;->o:Z

    return p1
.end method

.method public static synthetic j(Lg/d;)I
    .locals 0

    .line 1
    iget p0, p0, Lg/d;->n:I

    return p0
.end method

.method public static synthetic k(Lg/d;I)I
    .locals 0

    .line 1
    iput p1, p0, Lg/d;->n:I

    return p1
.end method

.method public static synthetic l(Lg/d;)I
    .locals 0

    .line 1
    iget p0, p0, Lg/d;->m:I

    return p0
.end method

.method public static synthetic m(Lg/d;I)I
    .locals 0

    .line 1
    iput p1, p0, Lg/d;->m:I

    return p1
.end method

.method public static synthetic n(Lg/d;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/d;->q:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic o(Lg/d;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lg/d;->C()V

    return-void
.end method

.method public static synthetic p()Z
    .locals 1

    .line 1
    sget-boolean v0, Lg/d;->t:Z

    return v0
.end method

.method public static synthetic q(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lg/d;->t:Z

    return p0
.end method

.method public static synthetic r(Lg/d;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lg/d;->F()V

    return-void
.end method

.method public static synthetic s(Lg/d;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lg/d;->d:Z

    return p0
.end method

.method public static synthetic t(Lg/d;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lg/d;->d:Z

    return p1
.end method

.method public static synthetic u(Lg/d;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/d;->e:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic v(Lg/d;)I
    .locals 0

    .line 1
    iget p0, p0, Lg/d;->b:I

    return p0
.end method

.method public static synthetic w(Lg/d;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lg/d;->E(I)V

    return-void
.end method

.method public static synthetic x(Lg/d;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lg/d;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A()Ljava/lang/String;
    .locals 3

    const-string v0, "/sys/kernel/debug/intel_otg/mode"

    .line 1
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, ""

    .line 4
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 5
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 7
    invoke-virtual {p0}, Lg/d;->A()Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2
.end method

.method public final B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, ""

    if-lez v0, :cond_4

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p1, p2

    move-object p2, v1

    :goto_0
    array-length v2, v0

    if-ge p1, v2, :cond_3

    aget-char v2, v0, p1

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_3

    .line 5
    aget-char v2, v0, p1

    const/16 v3, 0x3d

    if-eq v2, v3, :cond_1

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-char p2, v0, p1

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    move-object p2, v1

    :cond_3
    const-string p1, " "

    .line 7
    invoke-virtual {p2, p1, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_1
    return-object v1
.end method

.method public final C()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lg/d;->D()V

    const v0, 0xbb80

    const/16 v1, 0xc

    const/4 v2, 0x2

    .line 2
    invoke-static {v0, v1, v2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    add-int/lit16 v0, v0, 0xff

    shr-int/lit8 v0, v0, 0x8

    shl-int/lit8 v0, v0, 0x8

    const/16 v1, 0x1000

    if-ge v0, v1, :cond_0

    move v0, v1

    .line 3
    :cond_0
    new-instance v1, Landroid/media/AudioTrack;

    const/4 v3, 0x5

    const v4, 0xbb80

    const/16 v5, 0xc

    const/4 v6, 0x2

    const/4 v8, 0x0

    move-object v2, v1

    move v7, v0

    invoke-direct/range {v2 .. v8}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v1, p0, Lg/d;->s:Landroid/media/AudioTrack;

    .line 4
    new-array v2, v0, [B

    const/4 v3, 0x0

    .line 5
    invoke-virtual {v1, v2, v3, v0}, Landroid/media/AudioTrack;->write([BII)I

    .line 6
    iget-object v1, p0, Lg/d;->s:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    const/4 v4, 0x3

    if-eq v1, v4, :cond_1

    .line 7
    iget-object v1, p0, Lg/d;->s:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->play()V

    .line 8
    :cond_1
    iget-object v1, p0, Lg/d;->s:Landroid/media/AudioTrack;

    invoke-virtual {v1, v2, v3, v0}, Landroid/media/AudioTrack;->write([BII)I

    return-void
.end method

.method public final D()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lg/d;->G()V

    .line 2
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f03005e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lg/d;->r:Landroid/media/MediaPlayer;

    .line 4
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 5
    iget-object v0, p0, Lg/d;->r:Landroid/media/MediaPlayer;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 6
    iget-object v0, p0, Lg/d;->r:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 7
    iget-object v0, p0, Lg/d;->r:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final E(I)V
    .locals 4

    .line 1
    sget v0, Lg/d;->u:I

    if-eq v0, p1, :cond_1

    .line 2
    sput p1, Lg/d;->u:I

    const-string v0, "audio.hw.allow_close"

    const/4 v1, 0x1

    const/16 v2, 0x20

    const/4 v3, 0x2

    if-nez p1, :cond_0

    .line 3
    sput v3, Lu0/b;->H3:I

    .line 4
    invoke-static {v2, v1}, Ly0/h;->Y(IZ)V

    const-string p1, "1"

    .line 5
    invoke-static {v0, p1}, La/i;->Z(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lg/d;->D()V

    .line 7
    invoke-virtual {p0}, Lg/d;->G()V

    goto :goto_0

    .line 8
    :cond_0
    sput v3, Lu0/b;->H3:I

    .line 9
    invoke-static {v2, v1}, Ly0/h;->Y(IZ)V

    const-wide/16 v1, 0x64

    .line 10
    invoke-static {v1, v2}, La/i;->a0(J)V

    const-string p1, "0"

    .line 11
    invoke-static {v0, p1}, La/i;->Z(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lg/d;->D()V

    .line 13
    invoke-virtual {p0}, Lg/d;->G()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final F()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/d;->G()V

    .line 2
    iget-object v0, p0, Lg/d;->s:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 4
    iget-object v0, p0, Lg/d;->s:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 5
    iget-object v0, p0, Lg/d;->s:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lg/d;->s:Landroid/media/AudioTrack;

    :cond_0
    return-void
.end method

.method public final G()V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/d;->r:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 3
    iget-object v0, p0, Lg/d;->r:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 4
    iget-object v0, p0, Lg/d;->r:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lg/d;->r:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method

.method public final H()V
    .locals 2

    const-string/jumbo v0, "sys.car.reverse"

    const-string v1, "2"

    .line 1
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->h:Lo1/y;

    iget-object v1, p0, Lg/d;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lu0/c;->f:Lo1/y;

    iget-object v1, p0, Lg/d;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lg/d;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Ld1/e;->a:Lo1/y;

    iget-object v1, p0, Lg/d;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lu0/c;->c:Lo1/y;

    iget-object v1, p0, Lg/d;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lu0/c;->j:Lo1/y;

    iget-object v1, p0, Lg/d;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, La/d;->a:Lo1/y;

    iget-object v1, p0, Lg/d;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lg/d;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    sget-object v0, Lw0/e;->f:Lo1/y;

    iget-object v1, p0, Lg/d;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Lu0/b;->T3:Z

    const/16 v1, 0x32

    .line 2
    sput v1, Lo1/q0;->b:I

    const/4 v1, 0x0

    .line 3
    sput v1, Ly0/f;->V:I

    .line 4
    sput-boolean v1, Lu0/b;->E3:Z

    .line 5
    invoke-virtual {p0}, Lg/d;->z()V

    .line 6
    iget-object v2, p0, Lg/d;->h:Landroid/os/UEventObserver;

    const-string v3, "GPIO_NAME=car-reverse GPIO_STATE=on"

    invoke-virtual {v2, v3}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 7
    iget-object v2, p0, Lg/d;->h:Landroid/os/UEventObserver;

    const-string v3, "GPIO_NAME=car-reverse GPIO_STATE=over"

    invoke-virtual {v2, v3}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 8
    iget-object v2, p0, Lg/d;->h:Landroid/os/UEventObserver;

    const-string v3, "FYT_IOCTRL_3G=AIRPLANEMODE"

    invoke-virtual {v2, v3}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 9
    iget-object v2, p0, Lg/d;->h:Landroid/os/UEventObserver;

    const-string v3, "FYT_T132_RESET=COMPLETE"

    invoke-virtual {v2, v3}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 10
    iget-object v2, p0, Lg/d;->h:Landroid/os/UEventObserver;

    const-string v3, "FYT_I2C4=BUSY"

    invoke-virtual {v2, v3}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    const/4 v2, -0x1

    .line 11
    iput v2, p0, Lg/d;->m:I

    .line 12
    sget-object v2, Lu0/c;->h:Lo1/y;

    iget-object v3, p0, Lg/d;->f:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 13
    sget-object v2, Lu0/c;->f:Lo1/y;

    iget-object v3, p0, Lg/d;->p:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 14
    sget-object v2, Lu0/c;->m:Lo1/y;

    iget-object v3, p0, Lg/d;->l:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 15
    sget-object v2, Ld1/e;->a:Lo1/y;

    iget-object v3, p0, Lg/d;->k:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 16
    sget-object v2, Lu0/c;->c:Lo1/y;

    iget-object v3, p0, Lg/d;->p:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 17
    sget-object v2, Lu0/c;->j:Lo1/y;

    iget-object v3, p0, Lg/d;->p:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 18
    sget-object v2, La/d;->a:Lo1/y;

    iget-object v3, p0, Lg/d;->j:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 19
    sget-object v2, Lu0/c;->a:Lo1/y;

    iget-object v3, p0, Lg/d;->g:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 20
    sget-object v2, Lw0/e;->f:Lo1/y;

    iget-object v3, p0, Lg/d;->g:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    const/4 v2, 0x2

    .line 21
    sput v2, Lu0/b;->H3:I

    const/16 v2, 0x20

    .line 22
    invoke-static {v2, v0}, Ly0/h;->Y(IZ)V

    const-wide/16 v2, 0x64

    .line 23
    invoke-static {v2, v3}, La/i;->a0(J)V

    const-string v0, "audio.hw.allow_close"

    const-string v2, "0"

    .line 24
    invoke-static {v0, v2}, La/i;->Z(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lg/d;->C()V

    .line 26
    sget-object v0, Lu0/c;->A:Lo1/y;

    new-instance v2, Lg/d$c;

    invoke-direct {v2, p0}, Lg/d$c;-><init>(Lg/d;)V

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public y(I)V
    .locals 5

    .line 1
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const-string v4, "airplane_mode_on"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    const-string/jumbo p1, "state"

    .line 3
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public final z()V
    .locals 4

    const-string/jumbo v0, "ro.fixed.wifi"

    const-string v1, ""

    .line 1
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 2
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    const-string v0, "persist.modem.disable"

    const-string v1, "false"

    .line 3
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    move v0, v3

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    xor-int/lit8 v1, v0, 0x1

    const-string v2, "com.mirrtalk.app"

    .line 4
    invoke-static {v2, v1}, Lu0/d;->m0(Ljava/lang/String;Z)V

    xor-int/2addr v0, v3

    const-string v1, "com.syu.unicar"

    .line 5
    invoke-static {v1, v0}, Lu0/d;->m0(Ljava/lang/String;Z)V

    return-void
.end method
