.class public Lg/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/g;


# static fields
.field public static n:Z = false


# instance fields
.field public a:Ljava/lang/String;

.field public final b:Ljava/lang/Runnable;

.field public c:Ljava/lang/Runnable;

.field public d:Ljava/lang/Runnable;

.field public e:I

.field public f:I

.field public g:Z

.field public h:Ljava/lang/Runnable;

.field public final i:Ljava/lang/Runnable;

.field public final j:Landroid/os/UEventObserver;

.field public k:Ljava/lang/Runnable;

.field public l:Landroid/media/MediaPlayer;

.field public m:Landroid/media/AudioTrack;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ChipPX5"

    .line 2
    iput-object v0, p0, Lg/b;->a:Ljava/lang/String;

    .line 3
    new-instance v0, Lg/b$a;

    invoke-direct {v0, p0}, Lg/b$a;-><init>(Lg/b;)V

    iput-object v0, p0, Lg/b;->b:Ljava/lang/Runnable;

    .line 4
    new-instance v0, Lg/b$b;

    invoke-direct {v0, p0}, Lg/b$b;-><init>(Lg/b;)V

    iput-object v0, p0, Lg/b;->c:Ljava/lang/Runnable;

    .line 5
    new-instance v0, Lg/b$c;

    invoke-direct {v0, p0}, Lg/b$c;-><init>(Lg/b;)V

    iput-object v0, p0, Lg/b;->d:Ljava/lang/Runnable;

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lg/b;->e:I

    .line 7
    iput v0, p0, Lg/b;->f:I

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lg/b;->g:Z

    .line 9
    new-instance v0, Lg/b$d;

    invoke-direct {v0, p0}, Lg/b$d;-><init>(Lg/b;)V

    iput-object v0, p0, Lg/b;->h:Ljava/lang/Runnable;

    .line 10
    new-instance v0, Lg/b$e;

    invoke-direct {v0, p0}, Lg/b$e;-><init>(Lg/b;)V

    iput-object v0, p0, Lg/b;->i:Ljava/lang/Runnable;

    .line 11
    new-instance v0, Lg/b$f;

    invoke-direct {v0, p0}, Lg/b$f;-><init>(Lg/b;)V

    iput-object v0, p0, Lg/b;->j:Landroid/os/UEventObserver;

    .line 12
    new-instance v0, Lg/b$g;

    invoke-direct {v0, p0}, Lg/b$g;-><init>(Lg/b;)V

    iput-object v0, p0, Lg/b;->k:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic c()Z
    .locals 1

    .line 1
    sget-boolean v0, Lg/b;->n:Z

    return v0
.end method

.method public static synthetic d(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lg/b;->n:Z

    return p0
.end method

.method public static synthetic e(Lg/b;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lg/b;->t()V

    return-void
.end method

.method public static synthetic f(Lg/b;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/b;->k:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic g(Lg/b;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lg/b;->v()V

    return-void
.end method

.method public static synthetic h(Lg/b;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lg/b;->x()V

    return-void
.end method

.method public static synthetic i(Lg/b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lg/b;->g:Z

    return p0
.end method

.method public static synthetic j(Lg/b;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lg/b;->g:Z

    return p1
.end method

.method public static synthetic k(Lg/b;)I
    .locals 0

    .line 1
    iget p0, p0, Lg/b;->f:I

    return p0
.end method

.method public static synthetic l(Lg/b;I)I
    .locals 0

    .line 1
    iput p1, p0, Lg/b;->f:I

    return p1
.end method

.method public static synthetic m(Lg/b;)I
    .locals 0

    .line 1
    iget p0, p0, Lg/b;->e:I

    return p0
.end method

.method public static synthetic n(Lg/b;I)I
    .locals 0

    .line 1
    iput p1, p0, Lg/b;->e:I

    return p1
.end method

.method public static synthetic o(Lg/b;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/b;->i:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic p(Lg/b;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lg/b;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Lg/b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/b;->a:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->f:Lo1/y;

    iget-object v1, p0, Lg/b;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Ld1/e;->a:Lo1/y;

    iget-object v1, p0, Lg/b;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lu0/c;->c:Lo1/y;

    iget-object v1, p0, Lg/b;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lu0/c;->j:Lo1/y;

    iget-object v1, p0, Lg/b;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, La/d;->a:Lo1/y;

    iget-object v1, p0, Lg/b;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lu0/c;->h:Lo1/y;

    iget-object v1, p0, Lg/b;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()V
    .locals 4

    const/16 v0, 0x32

    .line 1
    sput v0, Lo1/q0;->b:I

    const/4 v0, 0x1

    .line 2
    sput v0, Ly0/f;->V:I

    const/4 v1, 0x0

    .line 3
    sput-boolean v1, Lu0/b;->E3:Z

    .line 4
    :try_start_0
    iget-object v2, p0, Lg/b;->j:Landroid/os/UEventObserver;

    const-string v3, "GPIO_NAME=car-reverse GPIO_STATE=on"

    invoke-virtual {v2, v3}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 5
    iget-object v2, p0, Lg/b;->j:Landroid/os/UEventObserver;

    const-string v3, "GPIO_NAME=car-reverse GPIO_STATE=over"

    invoke-virtual {v2, v3}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 6
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 v2, 0x2

    .line 7
    sput v2, Lu0/b;->H3:I

    const/16 v2, 0x20

    .line 8
    invoke-static {v2, v0}, Ly0/h;->Y(IZ)V

    const-wide/16 v2, 0x64

    .line 9
    invoke-static {v2, v3}, La/i;->a0(J)V

    .line 10
    invoke-virtual {p0}, Lg/b;->t()V

    const/4 v2, -0x1

    .line 11
    iput v2, p0, Lg/b;->e:I

    .line 12
    sget-object v2, Lu0/c;->f:Lo1/y;

    iget-object v3, p0, Lg/b;->h:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 13
    sget-object v2, Ld1/e;->a:Lo1/y;

    iget-object v3, p0, Lg/b;->d:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 14
    sget-object v2, Lu0/c;->c:Lo1/y;

    iget-object v3, p0, Lg/b;->h:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 15
    sget-object v1, Lu0/c;->j:Lo1/y;

    iget-object v2, p0, Lg/b;->h:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v0}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 16
    sget-object v1, La/d;->a:Lo1/y;

    iget-object v2, p0, Lg/b;->c:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v0}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 17
    sget-object v1, Lu0/c;->h:Lo1/y;

    iget-object v2, p0, Lg/b;->b:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v0}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public r(I)V
    .locals 0

    return-void
.end method

.method public final s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
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

.method public final t()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lg/b;->u()V

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

    iput-object v1, p0, Lg/b;->m:Landroid/media/AudioTrack;

    .line 4
    new-array v2, v0, [B

    const/4 v3, 0x0

    .line 5
    invoke-virtual {v1, v2, v3, v0}, Landroid/media/AudioTrack;->write([BII)I

    .line 6
    iget-object v1, p0, Lg/b;->m:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    const/4 v4, 0x3

    if-eq v1, v4, :cond_1

    .line 7
    iget-object v1, p0, Lg/b;->m:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->play()V

    .line 8
    :cond_1
    iget-object v1, p0, Lg/b;->m:Landroid/media/AudioTrack;

    invoke-virtual {v1, v2, v3, v0}, Landroid/media/AudioTrack;->write([BII)I

    return-void
.end method

.method public final u()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lg/b;->w()V

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

    iput-object v1, p0, Lg/b;->l:Landroid/media/MediaPlayer;

    .line 4
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 5
    iget-object v0, p0, Lg/b;->l:Landroid/media/MediaPlayer;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 6
    iget-object v0, p0, Lg/b;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 7
    iget-object v0, p0, Lg/b;->l:Landroid/media/MediaPlayer;

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

.method public final v()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/b;->w()V

    .line 2
    iget-object v0, p0, Lg/b;->m:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 4
    iget-object v0, p0, Lg/b;->m:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 5
    iget-object v0, p0, Lg/b;->m:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lg/b;->m:Landroid/media/AudioTrack;

    :cond_0
    return-void
.end method

.method public final w()V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/b;->l:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 3
    iget-object v0, p0, Lg/b;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 4
    iget-object v0, p0, Lg/b;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lg/b;->l:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method

.method public final x()V
    .locals 2

    const-string/jumbo v0, "sys.car.reverse"

    const-string v1, "2"

    .line 1
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
