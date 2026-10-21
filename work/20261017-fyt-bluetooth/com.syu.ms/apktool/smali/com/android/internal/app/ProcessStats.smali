.class public final Lcom/android/internal/app/ProcessStats;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ProcessStats$c;,
        Lcom/android/internal/app/ProcessStats$e;,
        Lcom/android/internal/app/ProcessStats$d;,
        Lcom/android/internal/app/ProcessStats$b;
    }
.end annotation


# static fields
.field public static final A:[Ljava/lang/String;

.field public static final B:[Ljava/lang/String;

.field public static final C:[Ljava/lang/String;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/app/ProcessStats;",
            ">;"
        }
    .end annotation
.end field

.field public static final D:[Ljava/lang/String;

.field public static final E:[Ljava/lang/String;

.field public static final F:[Ljava/lang/String;

.field public static G:I

.field public static H:I

.field public static I:I

.field public static J:I

.field public static K:I

.field public static L:I

.field public static final M:[I

.field public static final t:[I

.field public static final u:[I

.field public static final v:[I

.field public static final w:[I

.field public static final x:[I

.field public static final y:[I

.field public static final z:[Ljava/lang/String;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public final d:Lj/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/l<",
            "Lcom/android/internal/app/ProcessStats$c;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lj/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/l<",
            "Lcom/android/internal/app/ProcessStats$d;",
            ">;"
        }
    .end annotation
.end field

.field public final f:[J

.field public g:I

.field public h:J

.field public i:J

.field public j:J

.field public k:J

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public final n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[J>;"
        }
    .end annotation
.end field

.field public o:I

.field public p:[I

.field public q:I

.field public r:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/app/ProcessStats;->t:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/app/ProcessStats;->u:[I

    const/16 v0, 0x9

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/internal/app/ProcessStats;->v:[I

    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/internal/app/ProcessStats;->w:[I

    const/16 v0, 0xe

    new-array v1, v0, [I

    .line 5
    fill-array-data v1, :array_4

    sput-object v1, Lcom/android/internal/app/ProcessStats;->x:[I

    new-array v0, v0, [I

    .line 6
    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/internal/app/ProcessStats;->y:[I

    const-string v1, "Persist"

    const-string v2, "Top    "

    const-string v3, "ImpFg  "

    const-string v4, "ImpBg  "

    const-string v5, "Backup "

    const-string v6, "HeavyWt"

    const-string v7, "Service"

    const-string v8, "ServRst"

    const-string v9, "Receivr"

    const-string v10, "Home   "

    const-string v11, "LastAct"

    const-string v12, "CchAct "

    const-string v13, "CchCAct"

    const-string v14, "CchEmty"

    .line 7
    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/ProcessStats;->z:[Ljava/lang/String;

    const-string v0, "off"

    const-string v1, "on"

    .line 8
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/ProcessStats;->A:[Ljava/lang/String;

    const-string v0, "norm"

    const-string v1, "mod"

    const-string v2, "low"

    const-string v3, "crit"

    .line 9
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/ProcessStats;->B:[Ljava/lang/String;

    const-string v1, "pers"

    const-string/jumbo v2, "top"

    const-string v3, "impfg"

    const-string v4, "impbg"

    const-string v5, "backup"

    const-string v6, "heavy"

    const-string/jumbo v7, "service"

    const-string/jumbo v8, "service-rs"

    const-string v9, "receiver"

    const-string v10, "home"

    const-string v11, "lastact"

    const-string v12, "cch-activity"

    const-string v13, "cch-aclient"

    const-string v14, "cch-empty"

    .line 10
    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/ProcessStats;->C:[Ljava/lang/String;

    const-string v0, "0"

    const-string v1, "1"

    .line 11
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/ProcessStats;->D:[Ljava/lang/String;

    const-string v0, "n"

    const-string v1, "m"

    const-string v2, "l"

    const-string v3, "c"

    .line 12
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/ProcessStats;->E:[Ljava/lang/String;

    const-string v1, "p"

    const-string/jumbo v2, "t"

    const-string v3, "f"

    const-string v4, "b"

    const-string/jumbo v5, "u"

    const-string/jumbo v6, "w"

    const-string/jumbo v7, "s"

    const-string/jumbo v8, "x"

    const-string v9, "r"

    const-string v10, "h"

    const-string v11, "l"

    const-string v12, "a"

    const-string v13, "c"

    const-string v14, "e"

    .line 13
    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/ProcessStats;->F:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 14
    sput v0, Lcom/android/internal/app/ProcessStats;->G:I

    const/16 v1, 0xff

    .line 15
    sput v1, Lcom/android/internal/app/ProcessStats;->H:I

    const/16 v2, 0x8

    .line 16
    sput v2, Lcom/android/internal/app/ProcessStats;->I:I

    .line 17
    sput v1, Lcom/android/internal/app/ProcessStats;->J:I

    const/16 v1, 0x10

    .line 18
    sput v1, Lcom/android/internal/app/ProcessStats;->K:I

    const v1, 0xffff

    .line 19
    sput v1, Lcom/android/internal/app/ProcessStats;->L:I

    .line 20
    new-instance v1, Lcom/android/internal/app/ProcessStats$a;

    invoke-direct {v1}, Lcom/android/internal/app/ProcessStats$a;-><init>()V

    sput-object v1, Lcom/android/internal/app/ProcessStats;->CREATOR:Landroid/os/Parcelable$Creator;

    new-array v0, v0, [I

    .line 21
    sput-object v0, Lcom/android/internal/app/ProcessStats;->M:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x4
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
    .end array-data

    :array_3
    .array-data 4
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lj/l;

    invoke-direct {v0}, Lj/l;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->d:Lj/l;

    .line 3
    new-instance v0, Lj/l;

    invoke-direct {v0}, Lj/l;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->e:Lj/l;

    const/16 v0, 0x8

    new-array v0, v0, [J

    .line 4
    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->f:[J

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/internal/app/ProcessStats;->g:I

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->n:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {p0}, Lcom/android/internal/app/ProcessStats;->m()V

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ProcessStats;->k(Landroid/os/Parcel;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/internal/app/ProcessStats;Landroid/os/Parcel;Ljava/lang/String;Ljava/lang/String;)[I
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/app/ProcessStats;->l(Landroid/os/Parcel;Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object p0

    return-object p0
.end method

.method public static d([III)I
    .locals 4

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    :goto_0
    if-gt v0, p1, :cond_2

    add-int v1, v0, p1

    ushr-int/lit8 v1, v1, 0x1

    .line 1
    aget v2, p0, v1

    sget v3, Lcom/android/internal/app/ProcessStats;->G:I

    shr-int/2addr v2, v3

    sget v3, Lcom/android/internal/app/ProcessStats;->H:I

    and-int/2addr v2, v3

    if-ge v2, p2, :cond_0

    add-int/lit8 v1, v1, 0x1

    move v0, v1

    goto :goto_0

    :cond_0
    if-le v2, p2, :cond_1

    add-int/lit8 v1, v1, -0x1

    move p1, v1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    not-int p0, v0

    return p0
.end method

.method public static g(I)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "a"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/internal/app/ProcessStats;->I:I

    shr-int v1, p0, v1

    sget v2, Lcom/android/internal/app/ProcessStats;->J:I

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "i"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/internal/app/ProcessStats;->K:I

    shr-int v1, p0, v1

    sget v2, Lcom/android/internal/app/ProcessStats;->L:I

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "t"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/internal/app/ProcessStats;->G:I

    shr-int/2addr p0, v1

    sget v1, Lcom/android/internal/app/ProcessStats;->H:I

    and-int/2addr p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b(III)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats;->p:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2
    :goto_0
    iget v2, p0, Lcom/android/internal/app/ProcessStats;->q:I

    if-lt v2, v0, :cond_2

    add-int/lit8 v2, v0, 0x1

    .line 3
    invoke-static {v2}, Lu/a;->h(I)I

    move-result v2

    .line 4
    new-array v2, v2, [I

    if-lez v0, :cond_1

    .line 5
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats;->p:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    :cond_1
    iput-object v2, p0, Lcom/android/internal/app/ProcessStats;->p:[I

    .line 7
    :cond_2
    iget v0, p0, Lcom/android/internal/app/ProcessStats;->q:I

    if-lez v0, :cond_3

    sub-int v1, v0, p1

    if-eqz v1, :cond_3

    .line 8
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats;->p:[I

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    invoke-static {v1, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    :cond_3
    invoke-virtual {p0, p3}, Lcom/android/internal/app/ProcessStats;->c(I)I

    move-result p3

    .line 10
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats;->p:[I

    or-int/2addr p2, p3

    aput p2, v0, p1

    .line 11
    iget p1, p0, Lcom/android/internal/app/ProcessStats;->q:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/internal/app/ProcessStats;->q:I

    return p3
.end method

.method public c(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats;->n:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    .line 3
    iget v2, p0, Lcom/android/internal/app/ProcessStats;->o:I

    add-int/2addr v2, p1

    array-length v1, v1

    if-le v2, v1, :cond_0

    const/16 v1, 0x1000

    new-array v1, v1, [J

    .line 4
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats;->n:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lcom/android/internal/app/ProcessStats;->o:I

    .line 6
    :cond_0
    sget v1, Lcom/android/internal/app/ProcessStats;->I:I

    shl-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/app/ProcessStats;->o:I

    sget v2, Lcom/android/internal/app/ProcessStats;->K:I

    shl-int v2, v1, v2

    or-int/2addr v0, v2

    add-int/2addr v1, p1

    .line 7
    iput v1, p0, Lcom/android/internal/app/ProcessStats;->o:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()V
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/android/internal/app/ProcessStats;->i:J

    const-string/jumbo v2, "yyyy-MM-dd-HH-mm-ss"

    invoke-static {v2, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->b:Ljava/lang/String;

    return-void
.end method

.method public f(Z)Z
    .locals 4

    .line 1
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.sys.dalvik.vm.lib"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    if-eqz p1, :cond_0

    .line 3
    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->l:Ljava/lang/String;

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-static {}, Landroid/webkit/WebViewFactory;->useExperimentalWebView()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "chromeview"

    goto :goto_1

    :cond_2
    const-string/jumbo v1, "webview"

    .line 5
    :goto_1
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats;->m:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz p1, :cond_4

    .line 6
    iput-object v1, p0, Lcom/android/internal/app/ProcessStats;->m:Ljava/lang/String;

    goto :goto_2

    :cond_3
    move v2, v0

    :cond_4
    :goto_2
    return v2
.end method

.method public final h(Landroid/os/Parcel;ILjava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eq p1, p2, :cond_0

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bad "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/app/ProcessStats;->a:Ljava/lang/String;

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final i(Landroid/os/Parcel;I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x9

    if-gt p2, v0, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-ltz p2, :cond_1

    .line 3
    iget-object p1, p0, Lcom/android/internal/app/ProcessStats;->s:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_1
    not-int p2, p2

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p2, :cond_2

    .line 6
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats;->s:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final j(Landroid/os/Parcel;I[JI)V
    .locals 5

    const/16 v0, 0xa

    if-gt p2, v0, :cond_0

    .line 1
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->readLongArray([J)V

    return-void

    .line 2
    :cond_0
    array-length p2, p3

    if-gt p4, p2, :cond_4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_2

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ltz v1, :cond_1

    int-to-long v1, v1

    .line 4
    aput-wide v1, p3, v0

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    not-int v1, v1

    int-to-long v3, v1

    const/16 v1, 0x20

    shl-long/2addr v3, v1

    int-to-long v1, v2

    or-long/2addr v1, v3

    .line 6
    aput-wide v1, p3, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    if-ge v0, p2, :cond_3

    const-wide/16 v1, 0x0

    .line 7
    aput-wide v1, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void

    .line 8
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bad array lengths: got "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " array is "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public k(Landroid/os/Parcel;)V
    .locals 24

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 1
    iget-object v0, v6, Lcom/android/internal/app/ProcessStats;->d:Lj/l;

    invoke-virtual {v0}, Lj/l;->b()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-gtz v0, :cond_1

    iget-object v0, v6, Lcom/android/internal/app/ProcessStats;->e:Lj/l;

    invoke-virtual {v0}, Lj/l;->b()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    move v10, v8

    goto :goto_1

    :cond_1
    :goto_0
    move v10, v9

    :goto_1
    if-eqz v10, :cond_2

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ProcessStats;->o()V

    :cond_2
    const v0, 0x50535453

    const-string v1, "magic number"

    .line 3
    invoke-virtual {v6, v7, v0, v1}, Lcom/android/internal/app/ProcessStats;->h(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 4
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    const/16 v0, 0xd

    if-eq v11, v0, :cond_4

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bad version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/internal/app/ProcessStats;->a:Ljava/lang/String;

    return-void

    :cond_4
    const/16 v0, 0xe

    const-string/jumbo v1, "state count"

    .line 6
    invoke-virtual {v6, v7, v0, v1}, Lcom/android/internal/app/ProcessStats;->h(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/16 v0, 0x8

    const-string v1, "adj count"

    .line 7
    invoke-virtual {v6, v7, v0, v1}, Lcom/android/internal/app/ProcessStats;->h(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    return-void

    :cond_6
    const/4 v0, 0x7

    const-string v1, "pss count"

    .line 8
    invoke-virtual {v6, v7, v0, v1}, Lcom/android/internal/app/ProcessStats;->h(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/16 v0, 0x1000

    const-string v1, "longs size"

    .line 9
    invoke-virtual {v6, v7, v0, v1}, Lcom/android/internal/app/ProcessStats;->h(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    return-void

    .line 10
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v6, Lcom/android/internal/app/ProcessStats;->s:Ljava/util/ArrayList;

    .line 11
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v6, Lcom/android/internal/app/ProcessStats;->i:J

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ProcessStats;->e()V

    .line 13
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v6, Lcom/android/internal/app/ProcessStats;->j:J

    .line 14
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v6, Lcom/android/internal/app/ProcessStats;->k:J

    .line 15
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/android/internal/app/ProcessStats;->l:Ljava/lang/String;

    .line 16
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/android/internal/app/ProcessStats;->m:Ljava/lang/String;

    .line 17
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v6, Lcom/android/internal/app/ProcessStats;->c:I

    .line 18
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 19
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 20
    iget-object v3, v6, Lcom/android/internal/app/ProcessStats;->n:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    move v3, v8

    :goto_2
    add-int/lit8 v4, v1, -0x1

    if-ge v3, v4, :cond_a

    .line 21
    :goto_3
    iget-object v4, v6, Lcom/android/internal/app/ProcessStats;->n:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_9

    .line 22
    iget-object v4, v6, Lcom/android/internal/app/ProcessStats;->n:Ljava/util/ArrayList;

    new-array v5, v0, [J

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 23
    :cond_9
    iget-object v4, v6, Lcom/android/internal/app/ProcessStats;->n:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    invoke-virtual {v6, v7, v11, v4, v0}, Lcom/android/internal/app/ProcessStats;->j(Landroid/os/Parcel;I[JI)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_a
    new-array v0, v0, [J

    .line 24
    iput v2, v6, Lcom/android/internal/app/ProcessStats;->o:I

    .line 25
    invoke-virtual {v6, v7, v11, v0, v2}, Lcom/android/internal/app/ProcessStats;->j(Landroid/os/Parcel;I[JI)V

    .line 26
    iget-object v1, v6, Lcom/android/internal/app/ProcessStats;->n:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object v0, v6, Lcom/android/internal/app/ProcessStats;->f:[J

    array-length v1, v0

    invoke-virtual {v6, v7, v11, v0, v1}, Lcom/android/internal/app/ProcessStats;->j(Landroid/os/Parcel;I[JI)V

    .line 28
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-gez v0, :cond_b

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad process count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/internal/app/ProcessStats;->a:Ljava/lang/String;

    return-void

    :cond_b
    const-string v12, "bad uid: "

    const-string v13, "bad uid count: "

    if-lez v0, :cond_13

    add-int/lit8 v0, v0, -0x1

    .line 30
    invoke-virtual {v6, v7, v11}, Lcom/android/internal/app/ProcessStats;->i(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    const-string v0, "bad process name"

    .line 31
    iput-object v0, v6, Lcom/android/internal/app/ProcessStats;->a:Ljava/lang/String;

    return-void

    .line 32
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-gez v2, :cond_d

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/internal/app/ProcessStats;->a:Ljava/lang/String;

    return-void

    :cond_d
    :goto_4
    if-lez v2, :cond_b

    add-int/lit8 v2, v2, -0x1

    .line 34
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-gez v3, :cond_e

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/internal/app/ProcessStats;->a:Ljava/lang/String;

    return-void

    .line 36
    :cond_e
    invoke-virtual {v6, v7, v11}, Lcom/android/internal/app/ProcessStats;->i(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_f

    const-string v0, "bad process package name"

    .line 37
    iput-object v0, v6, Lcom/android/internal/app/ProcessStats;->a:Ljava/lang/String;

    return-void

    :cond_f
    if-eqz v10, :cond_10

    .line 38
    iget-object v5, v6, Lcom/android/internal/app/ProcessStats;->e:Lj/l;

    invoke-virtual {v5, v1, v3}, Lj/l;->a(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/ProcessStats$d;

    goto :goto_5

    :cond_10
    const/4 v5, 0x0

    :goto_5
    if-eqz v5, :cond_11

    .line 39
    invoke-virtual {v5, v7, v8}, Lcom/android/internal/app/ProcessStats$d;->h(Landroid/os/Parcel;Z)Z

    move-result v4

    if-nez v4, :cond_12

    return-void

    .line 40
    :cond_11
    new-instance v5, Lcom/android/internal/app/ProcessStats$d;

    invoke-direct {v5, v6, v4, v3, v1}, Lcom/android/internal/app/ProcessStats$d;-><init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;ILjava/lang/String;)V

    .line 41
    invoke-virtual {v5, v7, v9}, Lcom/android/internal/app/ProcessStats$d;->h(Landroid/os/Parcel;Z)Z

    move-result v4

    if-nez v4, :cond_12

    return-void

    .line 42
    :cond_12
    iget-object v4, v6, Lcom/android/internal/app/ProcessStats;->e:Lj/l;

    invoke-virtual {v4, v1, v3, v5}, Lj/l;->c(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 43
    :cond_13
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-gez v0, :cond_14

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad package count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/internal/app/ProcessStats;->a:Ljava/lang/String;

    return-void

    :cond_14
    :goto_6
    if-lez v0, :cond_28

    add-int/lit8 v15, v0, -0x1

    .line 45
    invoke-virtual {v6, v7, v11}, Lcom/android/internal/app/ProcessStats;->i(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_15

    const-string v0, "bad package name"

    .line 46
    iput-object v0, v6, Lcom/android/internal/app/ProcessStats;->a:Ljava/lang/String;

    return-void

    .line 47
    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-gez v0, :cond_16

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/internal/app/ProcessStats;->a:Ljava/lang/String;

    return-void

    :cond_16
    :goto_7
    if-lez v0, :cond_27

    add-int/lit8 v23, v0, -0x1

    .line 49
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-gez v0, :cond_17

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/internal/app/ProcessStats;->a:Ljava/lang/String;

    return-void

    .line 51
    :cond_17
    new-instance v4, Lcom/android/internal/app/ProcessStats$c;

    invoke-direct {v4, v5, v0}, Lcom/android/internal/app/ProcessStats$c;-><init>(Ljava/lang/String;I)V

    .line 52
    iget-object v1, v6, Lcom/android/internal/app/ProcessStats;->d:Lj/l;

    invoke-virtual {v1, v5, v0, v4}, Lj/l;->c(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-gez v1, :cond_18

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad package process count: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/internal/app/ProcessStats;->a:Ljava/lang/String;

    return-void

    :cond_18
    :goto_8
    if-lez v1, :cond_1f

    add-int/lit8 v1, v1, -0x1

    .line 55
    invoke-virtual {v6, v7, v11}, Lcom/android/internal/app/ProcessStats;->i(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_19

    const-string v0, "bad package process name"

    .line 56
    iput-object v0, v6, Lcom/android/internal/app/ProcessStats;->a:Ljava/lang/String;

    return-void

    .line 57
    :cond_19
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 58
    iget-object v14, v6, Lcom/android/internal/app/ProcessStats;->e:Lj/l;

    invoke-virtual {v14, v2, v0}, Lj/l;->a(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/app/ProcessStats$d;

    if-nez v14, :cond_1a

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no common proc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/internal/app/ProcessStats;->a:Ljava/lang/String;

    return-void

    :cond_1a
    if-eqz v3, :cond_1e

    if-eqz v10, :cond_1b

    .line 60
    iget-object v3, v4, Lcom/android/internal/app/ProcessStats$c;->a:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ProcessStats$d;

    goto :goto_9

    :cond_1b
    const/4 v3, 0x0

    :goto_9
    if-eqz v3, :cond_1c

    .line 61
    invoke-virtual {v3, v7, v8}, Lcom/android/internal/app/ProcessStats$d;->h(Landroid/os/Parcel;Z)Z

    move-result v14

    if-nez v14, :cond_1d

    return-void

    .line 62
    :cond_1c
    new-instance v3, Lcom/android/internal/app/ProcessStats$d;

    const-wide/16 v21, 0x0

    move-object/from16 v16, v3

    move-object/from16 v17, v14

    move-object/from16 v18, v5

    move/from16 v19, v0

    move-object/from16 v20, v2

    invoke-direct/range {v16 .. v22}, Lcom/android/internal/app/ProcessStats$d;-><init>(Lcom/android/internal/app/ProcessStats$d;Ljava/lang/String;ILjava/lang/String;J)V

    .line 63
    invoke-virtual {v3, v7, v9}, Lcom/android/internal/app/ProcessStats$d;->h(Landroid/os/Parcel;Z)Z

    move-result v14

    if-nez v14, :cond_1d

    return-void

    .line 64
    :cond_1d
    iget-object v14, v4, Lcom/android/internal/app/ProcessStats$c;->a:Landroid/util/ArrayMap;

    invoke-virtual {v14, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 65
    :cond_1e
    iget-object v3, v4, Lcom/android/internal/app/ProcessStats$c;->a:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 66
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-gez v0, :cond_20

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad package service count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/internal/app/ProcessStats;->a:Ljava/lang/String;

    return-void

    :cond_20
    :goto_a
    if-lez v0, :cond_26

    add-int/lit8 v14, v0, -0x1

    .line 68
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_21

    const-string v0, "bad package service name"

    .line 69
    iput-object v0, v6, Lcom/android/internal/app/ProcessStats;->a:Ljava/lang/String;

    return-void

    :cond_21
    const/16 v0, 0x9

    if-le v11, v0, :cond_22

    .line 70
    invoke-virtual {v6, v7, v11}, Lcom/android/internal/app/ProcessStats;->i(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_b

    :cond_22
    const/16 v16, 0x0

    :goto_b
    if-eqz v10, :cond_23

    .line 71
    iget-object v0, v4, Lcom/android/internal/app/ProcessStats$c;->b:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ProcessStats$e;

    goto :goto_c

    :cond_23
    const/4 v0, 0x0

    :goto_c
    if-nez v0, :cond_24

    .line 72
    new-instance v17, Lcom/android/internal/app/ProcessStats$e;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v2, v5

    move-object/from16 v19, v3

    move-object v8, v4

    move-object/from16 v4, v16

    move-object/from16 v16, v5

    move-object/from16 v5, v18

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/ProcessStats$e;-><init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$d;)V

    goto :goto_d

    :cond_24
    move-object/from16 v19, v3

    move-object v8, v4

    move-object/from16 v16, v5

    .line 73
    :goto_d
    invoke-virtual {v0, v7}, Lcom/android/internal/app/ProcessStats$e;->g(Landroid/os/Parcel;)Z

    move-result v1

    if-nez v1, :cond_25

    return-void

    .line 74
    :cond_25
    iget-object v1, v8, Lcom/android/internal/app/ProcessStats$c;->b:Landroid/util/ArrayMap;

    move-object/from16 v2, v19

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v8

    move v0, v14

    move-object/from16 v5, v16

    const/4 v8, 0x0

    goto :goto_a

    :cond_26
    move/from16 v0, v23

    goto/16 :goto_7

    :cond_27
    move v0, v15

    goto/16 :goto_6

    :cond_28
    const/4 v0, 0x0

    .line 75
    iput-object v0, v6, Lcom/android/internal/app/ProcessStats;->s:Ljava/util/ArrayList;

    return-void
.end method

.method public final l(Landroid/os/Parcel;Ljava/lang/String;Ljava/lang/String;)[I
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    const-string v0, "Ignoring existing stats; bad "

    const-string v1, "ProcessStats"

    if-gez p2, :cond_0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " table size: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    sget-object p1, Lcom/android/internal/app/ProcessStats;->M:[I

    return-object p1

    :cond_0
    const/4 v2, 0x0

    if-nez p2, :cond_1

    return-object v2

    .line 4
    :cond_1
    new-array v3, p2, [I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p2, :cond_3

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    aput v5, v3, v4

    .line 6
    aget v5, v3, v4

    invoke-virtual {p0, v5}, Lcom/android/internal/app/ProcessStats;->p(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " table entry: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p2, v3, v4

    invoke-static {p2}, Lcom/android/internal/app/ProcessStats;->g(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v3
.end method

.method public m()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/ProcessStats;->n()V

    .line 2
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats;->d:Lj/l;

    invoke-virtual {v0}, Lj/l;->b()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 3
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats;->e:Lj/l;

    invoke-virtual {v0}, Lj/l;->b()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/android/internal/app/ProcessStats;->g:I

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/android/internal/app/ProcessStats;->h:J

    return-void
.end method

.method public final n()V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/ProcessStats;->i:J

    .line 2
    invoke-virtual {p0}, Lcom/android/internal/app/ProcessStats;->e()V

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/ProcessStats;->k:J

    iput-wide v0, p0, Lcom/android/internal/app/ProcessStats;->j:J

    .line 4
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats;->n:Ljava/util/ArrayList;

    const/16 v1, 0x1000

    new-array v1, v1, [J

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/android/internal/app/ProcessStats;->o:I

    .line 7
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats;->f:[J

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 8
    iput-wide v2, p0, Lcom/android/internal/app/ProcessStats;->h:J

    const/4 v1, 0x0

    .line 9
    iput-object v1, p0, Lcom/android/internal/app/ProcessStats;->a:Ljava/lang/String;

    .line 10
    iput v0, p0, Lcom/android/internal/app/ProcessStats;->c:I

    const/4 v0, 0x1

    .line 11
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ProcessStats;->f(Z)Z

    return-void
.end method

.method public o()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/ProcessStats;->n()V

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats;->e:Lj/l;

    invoke-virtual {v2}, Lj/l;->b()Landroid/util/ArrayMap;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_3

    .line 5
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 6
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_1
    if-ltz v5, :cond_1

    .line 7
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/ProcessStats$d;

    .line 8
    invoke-virtual {v6}, Lcom/android/internal/app/ProcessStats$d;->f()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 9
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/ProcessStats$d;

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/app/ProcessStats$d;->i(J)V

    goto :goto_2

    .line 10
    :cond_0
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/ProcessStats$d;

    invoke-virtual {v6}, Lcom/android/internal/app/ProcessStats$d;->g()V

    .line 11
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->removeAt(I)V

    :goto_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-gtz v4, :cond_2

    .line 13
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 14
    :cond_3
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats;->d:Lj/l;

    invoke-virtual {v2}, Lj/l;->b()Landroid/util/ArrayMap;

    move-result-object v2

    .line 15
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_3
    if-ltz v3, :cond_c

    .line 16
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 17
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_4
    if-ltz v5, :cond_a

    .line 18
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/ProcessStats$c;

    .line 19
    iget-object v7, v6, Lcom/android/internal/app/ProcessStats$c;->a:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    :goto_5
    if-ltz v7, :cond_6

    .line 20
    iget-object v8, v6, Lcom/android/internal/app/ProcessStats$c;->a:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/app/ProcessStats$d;

    .line 21
    invoke-virtual {v8}, Lcom/android/internal/app/ProcessStats$d;->f()Z

    move-result v9

    if-nez v9, :cond_5

    iget-object v9, v8, Lcom/android/internal/app/ProcessStats$d;->e:Lcom/android/internal/app/ProcessStats$d;

    invoke-virtual {v9}, Lcom/android/internal/app/ProcessStats$d;->f()Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_6

    .line 22
    :cond_4
    iget-object v8, v6, Lcom/android/internal/app/ProcessStats$c;->a:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/app/ProcessStats$d;

    invoke-virtual {v8}, Lcom/android/internal/app/ProcessStats$d;->g()V

    .line 23
    iget-object v8, v6, Lcom/android/internal/app/ProcessStats$c;->a:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_7

    .line 24
    :cond_5
    :goto_6
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/app/ProcessStats$d;->i(J)V

    :goto_7
    add-int/lit8 v7, v7, -0x1

    goto :goto_5

    .line 25
    :cond_6
    iget-object v7, v6, Lcom/android/internal/app/ProcessStats$c;->b:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    :goto_8
    if-ltz v7, :cond_8

    .line 26
    iget-object v8, v6, Lcom/android/internal/app/ProcessStats$c;->b:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/app/ProcessStats$e;

    .line 27
    invoke-virtual {v8}, Lcom/android/internal/app/ProcessStats$e;->f()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 28
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/app/ProcessStats$e;->h(J)V

    goto :goto_9

    .line 29
    :cond_7
    iget-object v8, v6, Lcom/android/internal/app/ProcessStats$c;->b:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :goto_9
    add-int/lit8 v7, v7, -0x1

    goto :goto_8

    .line 30
    :cond_8
    iget-object v7, v6, Lcom/android/internal/app/ProcessStats$c;->a:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-gtz v7, :cond_9

    iget-object v6, v6, Lcom/android/internal/app/ProcessStats$c;->b:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-gtz v6, :cond_9

    .line 31
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_9
    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    .line 32
    :cond_a
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-gtz v4, :cond_b

    .line 33
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_b
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_3

    .line 34
    :cond_c
    iput-wide v0, p0, Lcom/android/internal/app/ProcessStats;->h:J

    return-void
.end method

.method public p(I)Z
    .locals 3

    .line 1
    sget v0, Lcom/android/internal/app/ProcessStats;->I:I

    shr-int v0, p1, v0

    sget v1, Lcom/android/internal/app/ProcessStats;->J:I

    and-int/2addr v0, v1

    .line 2
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats;->n:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    return v2

    .line 3
    :cond_0
    sget v0, Lcom/android/internal/app/ProcessStats;->K:I

    shr-int/2addr p1, v0

    sget v0, Lcom/android/internal/app/ProcessStats;->L:I

    and-int/2addr p1, v0

    const/16 v0, 0x1000

    if-lt p1, v0, :cond_1

    return v2

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final q(Landroid/os/Parcel;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats;->r:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats;->r:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats;->r:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    not-int v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public final r(Landroid/os/Parcel;[JI)V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    .line 1
    aget-wide v1, p2, v0

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    .line 2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Time val negative: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ProcessStats"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v1, v3

    :cond_0
    const-wide/32 v3, 0x7fffffff

    cmp-long v5, v1, v3

    if-gtz v5, :cond_1

    long-to-int v1, v1

    .line 3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_1
    const/16 v5, 0x20

    shr-long v5, v1, v5

    and-long/2addr v3, v5

    long-to-int v3, v3

    not-int v3, v3

    const-wide/32 v4, 0xfffffff

    and-long/2addr v1, v4

    long-to-int v1, v1

    .line 4
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const v4, 0x50535453

    .line 2
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v4, 0xd

    .line 3
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v4, 0xe

    .line 4
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v4, 0x8

    .line 5
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x7

    .line 6
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v4, 0x1000

    .line 7
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    new-instance v4, Landroid/util/ArrayMap;

    iget-object v5, v0, Lcom/android/internal/app/ProcessStats;->e:Lj/l;

    iget-object v5, v5, Lj/l;->a:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v4, v0, Lcom/android/internal/app/ProcessStats;->r:Landroid/util/ArrayMap;

    .line 9
    iget-object v4, v0, Lcom/android/internal/app/ProcessStats;->e:Lj/l;

    invoke-virtual {v4}, Lj/l;->b()Landroid/util/ArrayMap;

    move-result-object v4

    .line 10
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_1

    .line 11
    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/SparseArray;

    .line 12
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v9, :cond_0

    .line 13
    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/app/ProcessStats$d;

    invoke-virtual {v11, v2, v3}, Lcom/android/internal/app/ProcessStats$d;->e(J)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 14
    :cond_1
    iget-object v7, v0, Lcom/android/internal/app/ProcessStats;->d:Lj/l;

    invoke-virtual {v7}, Lj/l;->b()Landroid/util/ArrayMap;

    move-result-object v7

    .line 15
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v8, :cond_6

    .line 16
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/SparseArray;

    .line 17
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v11, :cond_5

    .line 18
    invoke-virtual {v10, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/app/ProcessStats$c;

    .line 19
    iget-object v14, v13, Lcom/android/internal/app/ProcessStats$c;->a:Landroid/util/ArrayMap;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v14

    const/4 v15, 0x0

    :goto_4
    if-ge v15, v14, :cond_3

    .line 20
    iget-object v6, v13, Lcom/android/internal/app/ProcessStats$c;->a:Landroid/util/ArrayMap;

    invoke-virtual {v6, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/ProcessStats$d;

    move-object/from16 v16, v10

    .line 21
    iget-object v10, v6, Lcom/android/internal/app/ProcessStats$d;->e:Lcom/android/internal/app/ProcessStats$d;

    if-eq v10, v6, :cond_2

    .line 22
    invoke-virtual {v6, v2, v3}, Lcom/android/internal/app/ProcessStats$d;->e(J)V

    :cond_2
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v10, v16

    goto :goto_4

    :cond_3
    move-object/from16 v16, v10

    .line 23
    iget-object v6, v13, Lcom/android/internal/app/ProcessStats$c;->b:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    const/4 v10, 0x0

    :goto_5
    if-ge v10, v6, :cond_4

    .line 24
    iget-object v14, v13, Lcom/android/internal/app/ProcessStats$c;->b:Landroid/util/ArrayMap;

    invoke-virtual {v14, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/app/ProcessStats$e;

    invoke-virtual {v14, v2, v3}, Lcom/android/internal/app/ProcessStats$e;->e(J)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v10, v16

    goto :goto_3

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 25
    :cond_6
    iget-wide v9, v0, Lcom/android/internal/app/ProcessStats;->i:J

    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    .line 26
    iget-wide v9, v0, Lcom/android/internal/app/ProcessStats;->j:J

    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    .line 27
    iget-wide v9, v0, Lcom/android/internal/app/ProcessStats;->k:J

    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    .line 28
    iget-object v6, v0, Lcom/android/internal/app/ProcessStats;->l:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    iget-object v6, v0, Lcom/android/internal/app/ProcessStats;->m:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 30
    iget v6, v0, Lcom/android/internal/app/ProcessStats;->c:I

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    iget-object v6, v0, Lcom/android/internal/app/ProcessStats;->n:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    iget v6, v0, Lcom/android/internal/app/ProcessStats;->o:I

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x0

    .line 33
    :goto_6
    iget-object v9, v0, Lcom/android/internal/app/ProcessStats;->n:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    if-ge v6, v9, :cond_7

    .line 34
    iget-object v9, v0, Lcom/android/internal/app/ProcessStats;->n:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [J

    .line 35
    array-length v10, v9

    invoke-virtual {v0, v1, v9, v10}, Lcom/android/internal/app/ProcessStats;->r(Landroid/os/Parcel;[JI)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 36
    :cond_7
    iget-object v6, v0, Lcom/android/internal/app/ProcessStats;->n:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v10

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [J

    .line 37
    iget v9, v0, Lcom/android/internal/app/ProcessStats;->o:I

    invoke-virtual {v0, v1, v6, v9}, Lcom/android/internal/app/ProcessStats;->r(Landroid/os/Parcel;[JI)V

    .line 38
    iget v6, v0, Lcom/android/internal/app/ProcessStats;->g:I

    const/4 v9, -0x1

    if-eq v6, v9, :cond_8

    .line 39
    iget-object v9, v0, Lcom/android/internal/app/ProcessStats;->f:[J

    aget-wide v11, v9, v6

    iget-wide v13, v0, Lcom/android/internal/app/ProcessStats;->h:J

    sub-long v13, v2, v13

    add-long/2addr v11, v13

    aput-wide v11, v9, v6

    .line 40
    iput-wide v2, v0, Lcom/android/internal/app/ProcessStats;->h:J

    .line 41
    :cond_8
    iget-object v6, v0, Lcom/android/internal/app/ProcessStats;->f:[J

    array-length v9, v6

    invoke-virtual {v0, v1, v6, v9}, Lcom/android/internal/app/ProcessStats;->r(Landroid/os/Parcel;[JI)V

    .line 42
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x0

    :goto_7
    if-ge v6, v5, :cond_a

    .line 43
    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v0, v1, v9}, Lcom/android/internal/app/ProcessStats;->q(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseArray;

    .line 45
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v11

    .line 46
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v12, 0x0

    :goto_8
    if-ge v12, v11, :cond_9

    .line 47
    invoke-virtual {v9, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    invoke-virtual {v9, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/app/ProcessStats$d;

    .line 49
    iget-object v14, v13, Lcom/android/internal/app/ProcessStats$d;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v14}, Lcom/android/internal/app/ProcessStats;->q(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v13, v1, v2, v3}, Lcom/android/internal/app/ProcessStats$d;->j(Landroid/os/Parcel;J)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 51
    :cond_a
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v8, :cond_f

    .line 52
    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/app/ProcessStats;->q(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 53
    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    .line 54
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 55
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x0

    :goto_a
    if-ge v9, v6, :cond_e

    .line 56
    invoke-virtual {v5, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    invoke-virtual {v5, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/app/ProcessStats$c;

    .line 58
    iget-object v12, v11, Lcom/android/internal/app/ProcessStats$c;->a:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12

    .line 59
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v13, 0x0

    :goto_b
    if-ge v13, v12, :cond_c

    .line 60
    iget-object v14, v11, Lcom/android/internal/app/ProcessStats$c;->a:Landroid/util/ArrayMap;

    invoke-virtual {v14, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v0, v1, v14}, Lcom/android/internal/app/ProcessStats;->q(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 61
    iget-object v14, v11, Lcom/android/internal/app/ProcessStats$c;->a:Landroid/util/ArrayMap;

    invoke-virtual {v14, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/app/ProcessStats$d;

    .line 62
    iget-object v15, v14, Lcom/android/internal/app/ProcessStats$d;->e:Lcom/android/internal/app/ProcessStats$d;

    if-ne v15, v14, :cond_b

    const/4 v15, 0x0

    .line 63
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_c

    :cond_b
    const/4 v15, 0x0

    .line 64
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    invoke-virtual {v14, v1, v2, v3}, Lcom/android/internal/app/ProcessStats$d;->j(Landroid/os/Parcel;J)V

    :goto_c
    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    :cond_c
    const/4 v15, 0x0

    .line 66
    iget-object v12, v11, Lcom/android/internal/app/ProcessStats$c;->b:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12

    .line 67
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V

    move v13, v15

    :goto_d
    if-ge v13, v12, :cond_d

    .line 68
    iget-object v14, v11, Lcom/android/internal/app/ProcessStats$c;->b:Landroid/util/ArrayMap;

    invoke-virtual {v14, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object v14, v11, Lcom/android/internal/app/ProcessStats$c;->b:Landroid/util/ArrayMap;

    invoke-virtual {v14, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/app/ProcessStats$e;

    .line 70
    iget-object v10, v14, Lcom/android/internal/app/ProcessStats$e;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v10}, Lcom/android/internal/app/ProcessStats;->q(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v14, v1, v2, v3}, Lcom/android/internal/app/ProcessStats$e;->i(Landroid/os/Parcel;J)V

    add-int/lit8 v13, v13, 0x1

    const/4 v10, 0x1

    goto :goto_d

    :cond_d
    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x1

    goto :goto_a

    :cond_e
    const/4 v15, 0x0

    add-int/lit8 v4, v4, 0x1

    const/4 v10, 0x1

    goto/16 :goto_9

    :cond_f
    const/4 v1, 0x0

    .line 72
    iput-object v1, v0, Lcom/android/internal/app/ProcessStats;->r:Landroid/util/ArrayMap;

    return-void
.end method
