.class public Lo1/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field public static final n:Lo1/i;

.field public static o:Z

.field public static p:I

.field public static q:I

.field public static r:I

.field public static s:I

.field public static t:I

.field public static u:I


# instance fields
.field public a:Landroid/location/Location;

.field public b:Z

.field public c:J

.field public final d:Ljava/lang/Runnable;

.field public e:Ljava/lang/Runnable;

.field public f:I

.field public g:Ljava/lang/Runnable;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Landroid/location/GpsStatus$NmeaListener;

.field public k:I

.field public l:I

.field public m:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lo1/i;

    invoke-direct {v0}, Lo1/i;-><init>()V

    sput-object v0, Lo1/i;->n:Lo1/i;

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lo1/i;->o:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lo1/i;->c:J

    .line 3
    new-instance v0, Lo1/i$a;

    invoke-direct {v0, p0}, Lo1/i$a;-><init>(Lo1/i;)V

    iput-object v0, p0, Lo1/i;->d:Ljava/lang/Runnable;

    .line 4
    new-instance v1, Lo1/i$c;

    invoke-direct {v1, p0}, Lo1/i$c;-><init>(Lo1/i;)V

    iput-object v1, p0, Lo1/i;->e:Ljava/lang/Runnable;

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lo1/i;->f:I

    .line 6
    new-instance v2, Lo1/i$d;

    invoke-direct {v2, p0}, Lo1/i$d;-><init>(Lo1/i;)V

    iput-object v2, p0, Lo1/i;->g:Ljava/lang/Runnable;

    const-string v2, ""

    .line 7
    iput-object v2, p0, Lo1/i;->i:Ljava/lang/String;

    .line 8
    new-instance v2, Lo1/i$e;

    invoke-direct {v2, p0}, Lo1/i$e;-><init>(Lo1/i;)V

    iput-object v2, p0, Lo1/i;->j:Landroid/location/GpsStatus$NmeaListener;

    const/4 v2, -0x1

    .line 9
    iput v2, p0, Lo1/i;->m:I

    .line 10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 11
    sget-boolean v4, Lo1/i;->o:Z

    if-eqz v4, :cond_0

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 12
    sput-boolean v1, Lo1/i;->o:Z

    .line 13
    :cond_0
    sget-object v1, Lu0/c;->h:Lo1/y;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 14
    invoke-virtual {p0}, Lo1/i;->q()V

    .line 15
    sget-object v0, Lo1/j0;->j:Lo1/j0;

    iget-object v1, p0, Lo1/i;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/j0;->c(Ljava/lang/Runnable;)V

    .line 16
    iget-object v1, p0, Lo1/i;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/j0;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a([Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x2

    .line 1
    :try_start_0
    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_2

    .line 2
    array-length v4, p0

    add-int/lit8 v5, v2, 0x2

    mul-int/2addr v5, v3

    if-le v4, v5, :cond_1

    mul-int/lit8 v3, v2, 0x4

    add-int/lit8 v4, v3, 0x4

    .line 3
    aget-object v4, p0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x64

    if-ge v4, v5, :cond_0

    .line 4
    sget-object v5, Lu0/b;->T1:[I

    mul-int/lit8 v6, v0, 0x8

    mul-int/lit8 v7, v2, 0x2

    add-int/2addr v6, v7

    aput v4, v5, v6

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v3, v3, 0x7

    .line 5
    aget-object v3, p0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v5, v6

    goto :goto_1

    .line 6
    :cond_0
    sget-object v3, Lu0/b;->T1:[I

    mul-int/lit8 v4, v0, 0x8

    mul-int/lit8 v5, v2, 0x2

    add-int/2addr v4, v5

    aput v1, v3, v4

    add-int/lit8 v4, v4, 0x1

    .line 7
    aput v1, v3, v4

    goto :goto_1

    .line 8
    :cond_1
    sget-object v3, Lu0/b;->T1:[I

    mul-int/lit8 v4, v0, 0x8

    mul-int/lit8 v5, v2, 0x2

    add-int/2addr v4, v5

    aput v1, v3, v4

    add-int/lit8 v4, v4, 0x1

    .line 9
    aput v1, v3, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    :cond_2
    return-void
.end method

.method public static b([Ljava/lang/String;)V
    .locals 2

    .line 1
    array-length v0, p0

    const/16 v1, 0x9

    if-le v0, v1, :cond_0

    const/4 v0, 0x3

    .line 2
    aget-object v0, p0, v0

    invoke-static {v0}, Lo1/i;->v(Ljava/lang/String;)V

    const/4 v0, 0x5

    .line 3
    aget-object v0, p0, v0

    invoke-static {v0}, Lo1/i;->u(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 4
    aget-object v0, p0, v0

    aget-object p0, p0, v1

    invoke-static {v0, p0}, Lo1/i;->t(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic c(Lo1/i;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lo1/i;->q()V

    return-void
.end method

.method public static synthetic d(Lo1/i;)Landroid/location/Location;
    .locals 0

    .line 1
    iget-object p0, p0, Lo1/i;->a:Landroid/location/Location;

    return-object p0
.end method

.method public static synthetic e(Lo1/i;Landroid/location/Location;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lo1/i;->r(Landroid/location/Location;)V

    return-void
.end method

.method public static synthetic f(Lo1/i;)I
    .locals 0

    .line 1
    iget p0, p0, Lo1/i;->f:I

    return p0
.end method

.method public static synthetic g(Lo1/i;I)I
    .locals 0

    .line 1
    iput p1, p0, Lo1/i;->f:I

    return p1
.end method

.method public static synthetic h(Lo1/i;)I
    .locals 2

    .line 1
    iget v0, p0, Lo1/i;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lo1/i;->f:I

    return v0
.end method

.method public static synthetic i(Lo1/i;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lo1/i;->h:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic j(Lo1/i;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lo1/i;->h:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic k(Lo1/i;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lo1/i;->i:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic l(Lo1/i;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lo1/i;->i:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic m(Lo1/i;[Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lo1/i;->n([Ljava/lang/String;I)V

    return-void
.end method

.method public static o()Lo1/i;
    .locals 1

    .line 1
    sget-object v0, Lo1/i;->n:Lo1/i;

    return-object v0
.end method

.method public static t(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    :try_start_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xf

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    const/16 v1, 0x10

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x6

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lu0/b;->O1:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static u(Ljava/lang/String;)V
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    const-string v0, "%03d\u00b0%02d\u2032%02d\u2033"

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 2
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x5

    .line 3
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    const/4 v1, 0x2

    const/4 v3, 0x6

    const/16 v4, 0x8

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v1

    .line 4
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lu0/b;->N1:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 6

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    const-string v0, "%02d\u00b0%02d\u2032%02d\u2033"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 2
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const/4 v5, 0x4

    .line 3
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x5

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v4

    .line 4
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lu0/b;->M1:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public final n([Ljava/lang/String;I)V
    .locals 5

    const-string v0, ""

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-nez p2, :cond_2

    .line 1
    array-length p2, p1

    const/16 v4, 0xe

    if-le p2, v4, :cond_3

    .line 2
    aget-object p2, p1, v3

    if-eqz p2, :cond_0

    aget-object p2, p1, v3

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 3
    :try_start_0
    aget-object p2, p1, v3

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lo1/i;->l:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :catch_0
    :cond_0
    :try_start_1
    sput v1, Lu0/b;->Y1:I

    move p2, v1

    :goto_0
    const/16 v0, 0xc

    if-ge p2, v0, :cond_3

    add-int/lit8 v0, p2, 0x3

    .line 5
    aget-object v4, p1, v0

    if-eqz v4, :cond_1

    .line 6
    sget-object v4, Lu0/b;->S1:[I

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput v0, v4, p2

    .line 7
    sget v0, Lu0/b;->Y1:I

    add-int/2addr v0, v2

    sput v0, Lu0/b;->Y1:I

    goto :goto_1

    .line 8
    :cond_1
    sget-object v0, Lu0/b;->S1:[I

    aput v1, v0, p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    if-ne p2, v2, :cond_3

    .line 9
    array-length p2, p1

    if-le p2, v3, :cond_3

    .line 10
    aget-object p2, p1, v3

    if-eqz p2, :cond_3

    aget-object p2, p1, v3

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 11
    :try_start_2
    aget-object p1, p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lo1/i;->k:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 12
    :catch_1
    :cond_3
    iget p1, p0, Lo1/i;->k:I

    if-eq p1, v3, :cond_5

    iget p2, p0, Lo1/i;->l:I

    if-eq p2, v3, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_5

    if-ne p2, v0, :cond_4

    goto :goto_2

    .line 13
    :cond_4
    iput-boolean v1, p0, Lo1/i;->b:Z

    goto :goto_3

    .line 14
    :cond_5
    :goto_2
    iput-boolean v2, p0, Lo1/i;->b:Z

    :goto_3
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 9

    .line 1
    iput-object p1, p0, Lo1/i;->a:Landroid/location/Location;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Known Location : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Gps"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lo1/i;->a:Landroid/location/Location;

    if-eqz p1, :cond_7

    .line 4
    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result p1

    float-to-int p1, p1

    .line 5
    iget-object v0, p0, Lo1/i;->a:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    .line 6
    iget-object v0, p0, Lo1/i;->a:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAltitude()D

    .line 7
    iget-object v0, p0, Lo1/i;->a:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lu0/b;->Q1:I

    .line 8
    iget-object v0, p0, Lo1/i;->a:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    double-to-int v0, v0

    sput v0, Lu0/b;->R1:I

    .line 9
    sget v0, Lu0/b;->s0:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, p1, :cond_0

    .line 10
    sput p1, Lu0/b;->s0:I

    .line 11
    sget-object p1, Lo1/h;->a:Lo1/y;

    invoke-virtual {p1}, Lo1/y;->c()V

    const/16 p1, 0x409

    new-array v0, v2, [I

    .line 12
    sget v3, Lu0/b;->s0:I

    aput v3, v0, v1

    invoke-static {p1, v0}, Lk0/qt;->y0(I[I)V

    .line 13
    :cond_0
    iget-object p1, p0, Lo1/i;->a:Landroid/location/Location;

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result p1

    const v0, 0x40666666    # 3.6f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 14
    sget-boolean v0, Lu0/b;->C1:Z

    if-eqz v0, :cond_1

    .line 15
    invoke-static {p1}, Lu0/d;->v0(I)V

    .line 16
    :cond_1
    iget-object p1, p0, Lo1/i;->a:Landroid/location/Location;

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v3

    double-to-int p1, v3

    .line 17
    sget v0, Lu0/b;->t0:I

    if-eq v0, p1, :cond_2

    .line 18
    sget-object v0, Lo1/h;->c:Lo1/y;

    invoke-virtual {v0}, Lo1/y;->c()V

    .line 19
    sput p1, Lu0/b;->t0:I

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 20
    :goto_0
    sget-object v3, Lo1/a;->h:Lo1/a;

    invoke-virtual {v3}, Lo1/a;->d()Z

    move-result v3

    if-nez v3, :cond_3

    .line 21
    sget-object v3, Lo1/a;->h:Lo1/a;

    iget-object v4, p0, Lo1/i;->a:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getAltitude()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Lo1/a;->a(F)V

    .line 22
    :cond_3
    iget-object v3, p0, Lo1/i;->a:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    .line 23
    sget-wide v5, Lu0/b;->b2:D

    cmpl-double v5, v5, v3

    if-eqz v5, :cond_4

    .line 24
    sget-object v0, Lo1/h;->d:Lo1/y;

    invoke-virtual {v0}, Lo1/y;->c()V

    .line 25
    sput-wide v3, Lu0/b;->b2:D

    move v0, v2

    .line 26
    :cond_4
    iget-object v5, p0, Lo1/i;->a:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    .line 27
    sget-wide v7, Lu0/b;->c2:D

    cmpl-double v7, v7, v5

    if-eqz v7, :cond_5

    .line 28
    sget-object v0, Lo1/h;->e:Lo1/y;

    invoke-virtual {v0}, Lo1/y;->c()V

    .line 29
    sput-wide v5, Lu0/b;->c2:D

    move v0, v2

    :cond_5
    if-eqz v0, :cond_7

    int-to-float p1, p1

    .line 30
    sget-object v0, Lo1/a;->h:Lo1/a;

    invoke-virtual {v0}, Lo1/a;->c()F

    move-result v0

    const/4 v7, 0x1

    cmpl-float v7, v0, v7

    if-eqz v7, :cond_6

    move p1, v0

    :cond_6
    const/16 v0, 0xb3

    const/4 v7, 0x3

    new-array v7, v7, [F

    double-to-float v3, v3

    aput v3, v7, v1

    double-to-float v1, v5

    aput v1, v7, v2

    const/4 v1, 0x2

    aput p1, v7, v1

    .line 31
    invoke-static {v0, v7}, Lu0/d;->L3(I[F)V

    :cond_7
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public p()Z
    .locals 3

    .line 1
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps_auto_time"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method public final q()V
    .locals 7

    .line 1
    :try_start_0
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    const-string v2, "gps"

    const-wide/16 v3, 0x3e8

    const/4 v5, 0x0

    move-object v1, v0

    move-object v6, p0

    .line 2
    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 3
    iget-object v1, p0, Lo1/i;->j:Landroid/location/GpsStatus$NmeaListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addNmeaListener(Landroid/location/GpsStatus$NmeaListener;)Z

    :cond_0
    if-nez v0, :cond_1

    .line 4
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    new-instance v1, Lo1/i$b;

    invoke-direct {v1, p0}, Lo1/i$b;-><init>(Lo1/i;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final r(Landroid/location/Location;)V
    .locals 10

    .line 1
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xf

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    const/16 v1, 0x10

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lo1/i;->p()Z

    move-result v3

    if-nez v3, :cond_2

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    add-int/2addr v1, v2

    int-to-long v5, v1

    add-long/2addr v3, v5

    .line 9
    :goto_0
    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p1, 0x1

    .line 10
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v3, 0x2

    .line 11
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, p1

    const/4 v5, 0x5

    .line 12
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/16 v7, 0xb

    .line 13
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/16 v8, 0xc

    .line 14
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 15
    sget v9, Lo1/i;->p:I

    if-ne v1, v9, :cond_4

    sget v9, Lo1/i;->q:I

    if-ne v4, v9, :cond_4

    sget v9, Lo1/i;->r:I

    if-ne v6, v9, :cond_4

    sget v9, Lo1/i;->s:I

    if-ne v7, v9, :cond_4

    sget v9, Lo1/i;->t:I

    if-eq v8, v9, :cond_3

    goto :goto_1

    :cond_3
    move v9, v2

    goto :goto_2

    :cond_4
    :goto_1
    move v9, p1

    .line 16
    :goto_2
    sput v1, Lo1/i;->p:I

    .line 17
    sput v4, Lo1/i;->q:I

    .line 18
    sput v6, Lo1/i;->r:I

    .line 19
    sput v7, Lo1/i;->s:I

    .line 20
    sput v8, Lo1/i;->t:I

    const/16 v1, 0xd

    .line 21
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sput v0, Lo1/i;->u:I

    const/4 v4, 0x3

    if-eqz v9, :cond_5

    const/4 v6, 0x7

    new-array v6, v6, [I

    aput v1, v6, v2

    .line 22
    sget v1, Lo1/i;->p:I

    rem-int/lit8 v1, v1, 0x64

    aput v1, v6, p1

    sget v1, Lo1/i;->q:I

    aput v1, v6, v3

    sget v1, Lo1/i;->r:I

    aput v1, v6, v4

    const/4 v1, 0x4

    sget v7, Lo1/i;->s:I

    aput v7, v6, v1

    sget v1, Lo1/i;->t:I

    aput v1, v6, v5

    const/4 v1, 0x6

    aput v0, v6, v1

    invoke-static {v6}, Lz/k;->s([I)V

    .line 23
    :cond_5
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    xor-int/2addr v0, p1

    .line 24
    iget v1, p0, Lo1/i;->m:I

    if-eq v1, v0, :cond_6

    .line 25
    iput v0, p0, Lo1/i;->m:I

    new-array v1, v4, [I

    aput p1, v1, v2

    const/16 v2, 0x34

    aput v2, v1, p1

    aput v0, v1, v3

    .line 26
    invoke-static {v1}, Lz/k;->s([I)V

    :cond_6
    return-void
.end method

.method public s(IIIIII)V
    .locals 3

    .line 1
    sget-boolean v0, Lo1/i;->o:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lo1/i;->o:Z

    .line 3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    add-int/lit16 p1, p1, 0x7d0

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v1, v2, p1}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x2

    if-lez p2, :cond_1

    add-int/lit8 v0, p2, -0x1

    .line 5
    :cond_1
    invoke-virtual {v1, p1, v0}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x5

    .line 6
    invoke-virtual {v1, p1, p3}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xb

    .line 7
    invoke-virtual {v1, p1, p4}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    .line 8
    invoke-virtual {v1, p1, p5}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    .line 9
    invoke-virtual {v1, p1, p6}, Ljava/util/Calendar;->set(II)V

    .line 10
    invoke-virtual {v1}, Ljava/util/Calendar;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Gps"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    const-wide/16 p3, 0x3e8

    .line 12
    div-long p3, p1, p3

    const-wide/32 p5, 0x7fffffff

    cmp-long p3, p3, p5

    if-gez p3, :cond_2

    .line 13
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object p3

    const-string p4, "alarm"

    invoke-virtual {p3, p4}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/AlarmManager;

    invoke-virtual {p3, p1, p2}, Landroid/app/AlarmManager;->setTime(J)V

    :cond_2
    return-void
.end method
