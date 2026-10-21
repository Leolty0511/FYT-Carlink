.class public Lcom/android/internal/app/ProcessStats$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ProcessStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/android/internal/app/ProcessStats;

.field public final b:Ljava/lang/String;

.field public c:[I

.field public d:I


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/internal/app/ProcessStats$b;->a:Lcom/android/internal/app/ProcessStats;

    .line 3
    iput-object p2, p0, Lcom/android/internal/app/ProcessStats$b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(IJ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats$b;->c:[I

    iget v1, p0, Lcom/android/internal/app/ProcessStats$b;->d:I

    invoke-static {v0, v1, p1}, Lcom/android/internal/app/ProcessStats;->d([III)I

    move-result v0

    if-ltz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/internal/app/ProcessStats$b;->c:[I

    aget p1, p1, v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$b;->a:Lcom/android/internal/app/ProcessStats;

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$b;->c:[I

    iput-object v2, v1, Lcom/android/internal/app/ProcessStats;->p:[I

    .line 4
    iget v2, p0, Lcom/android/internal/app/ProcessStats$b;->d:I

    iput v2, v1, Lcom/android/internal/app/ProcessStats;->q:I

    not-int v0, v0

    const/4 v2, 0x1

    .line 5
    invoke-virtual {v1, v0, p1, v2}, Lcom/android/internal/app/ProcessStats;->b(III)I

    move-result p1

    .line 6
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats$b;->a:Lcom/android/internal/app/ProcessStats;

    iget-object v1, v0, Lcom/android/internal/app/ProcessStats;->p:[I

    iput-object v1, p0, Lcom/android/internal/app/ProcessStats$b;->c:[I

    .line 7
    iget v0, v0, Lcom/android/internal/app/ProcessStats;->q:I

    iput v0, p0, Lcom/android/internal/app/ProcessStats$b;->d:I

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats$b;->a:Lcom/android/internal/app/ProcessStats;

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->n:Ljava/util/ArrayList;

    sget v1, Lcom/android/internal/app/ProcessStats;->I:I

    shr-int v1, p1, v1

    sget v2, Lcom/android/internal/app/ProcessStats;->J:I

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 9
    sget v1, Lcom/android/internal/app/ProcessStats;->K:I

    shr-int/2addr p1, v1

    sget v1, Lcom/android/internal/app/ProcessStats;->L:I

    and-int/2addr p1, v1

    aget-wide v1, v0, p1

    add-long/2addr v1, p2

    aput-wide v1, v0, p1

    return-void
.end method

.method public b(Landroid/os/Parcel;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats$b;->a:Lcom/android/internal/app/ProcessStats;

    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$b;->b:Ljava/lang/String;

    const-string v2, "durations"

    invoke-static {v0, p1, v1, v2}, Lcom/android/internal/app/ProcessStats;->a(Lcom/android/internal/app/ProcessStats;Landroid/os/Parcel;Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/app/ProcessStats$b;->c:[I

    .line 2
    sget-object v0, Lcom/android/internal/app/ProcessStats;->M:[I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    array-length v1, p1

    :cond_1
    iput v1, p0, Lcom/android/internal/app/ProcessStats$b;->d:I

    const/4 p1, 0x1

    return p1
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/android/internal/app/ProcessStats$b;->c:[I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/internal/app/ProcessStats$b;->d:I

    return-void
.end method

.method public d(Landroid/os/Parcel;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/internal/app/ProcessStats$b;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Lcom/android/internal/app/ProcessStats$b;->d:I

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$b;->c:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
