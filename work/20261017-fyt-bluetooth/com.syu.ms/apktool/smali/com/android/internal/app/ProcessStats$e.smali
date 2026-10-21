.class public final Lcom/android/internal/app/ProcessStats$e;
.super Lcom/android/internal/app/ProcessStats$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ProcessStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public g:Lcom/android/internal/app/ProcessStats$d;

.field public h:Ljava/lang/Object;

.field public i:I

.field public j:I

.field public k:J

.field public l:Z

.field public m:I

.field public n:I

.field public o:J

.field public p:I

.field public q:I

.field public r:J

.field public s:I

.field public t:I

.field public u:J


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/android/internal/app/ProcessStats$b;-><init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/android/internal/app/ProcessStats$e;->j:I

    .line 3
    iput p1, p0, Lcom/android/internal/app/ProcessStats$e;->n:I

    .line 4
    iput p1, p0, Lcom/android/internal/app/ProcessStats$e;->q:I

    .line 5
    iput p1, p0, Lcom/android/internal/app/ProcessStats$e;->t:I

    .line 6
    iput-object p2, p0, Lcom/android/internal/app/ProcessStats$e;->e:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/android/internal/app/ProcessStats$e;->f:Ljava/lang/String;

    .line 8
    iput-object p5, p0, Lcom/android/internal/app/ProcessStats$e;->g:Lcom/android/internal/app/ProcessStats$d;

    return-void
.end method


# virtual methods
.method public e(J)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/internal/app/ProcessStats$e;->j:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x0

    .line 2
    iget-wide v2, p0, Lcom/android/internal/app/ProcessStats$e;->k:J

    sub-long v2, p1, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/app/ProcessStats$b;->a(IJ)V

    .line 3
    iput-wide p1, p0, Lcom/android/internal/app/ProcessStats$e;->k:J

    .line 4
    :cond_0
    iget v0, p0, Lcom/android/internal/app/ProcessStats$e;->n:I

    if-eq v0, v1, :cond_1

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x1

    .line 5
    iget-wide v2, p0, Lcom/android/internal/app/ProcessStats$e;->o:J

    sub-long v2, p1, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/app/ProcessStats$b;->a(IJ)V

    .line 6
    iput-wide p1, p0, Lcom/android/internal/app/ProcessStats$e;->o:J

    .line 7
    :cond_1
    iget v0, p0, Lcom/android/internal/app/ProcessStats$e;->q:I

    if-eq v0, v1, :cond_2

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x2

    .line 8
    iget-wide v2, p0, Lcom/android/internal/app/ProcessStats$e;->r:J

    sub-long v2, p1, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/app/ProcessStats$b;->a(IJ)V

    .line 9
    iput-wide p1, p0, Lcom/android/internal/app/ProcessStats$e;->r:J

    .line 10
    :cond_2
    iget v0, p0, Lcom/android/internal/app/ProcessStats$e;->t:I

    if-eq v0, v1, :cond_3

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x3

    .line 11
    iget-wide v1, p0, Lcom/android/internal/app/ProcessStats$e;->u:J

    sub-long v1, p1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/app/ProcessStats$b;->a(IJ)V

    .line 12
    iput-wide p1, p0, Lcom/android/internal/app/ProcessStats$e;->u:J

    :cond_3
    return-void
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats$e;->h:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/app/ProcessStats$e;->l:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public g(Landroid/os/Parcel;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ProcessStats$b;->b(Landroid/os/Parcel;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/ProcessStats$e;->i:I

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/ProcessStats$e;->m:I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/ProcessStats$e;->p:I

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/internal/app/ProcessStats$e;->s:I

    const/4 p1, 0x1

    return p1
.end method

.method public h(J)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/ProcessStats$b;->c()V

    .line 2
    iget v0, p0, Lcom/android/internal/app/ProcessStats$e;->j:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput v0, p0, Lcom/android/internal/app/ProcessStats$e;->i:I

    .line 3
    iget v0, p0, Lcom/android/internal/app/ProcessStats$e;->n:I

    if-eq v0, v3, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput v0, p0, Lcom/android/internal/app/ProcessStats$e;->m:I

    .line 4
    iget v0, p0, Lcom/android/internal/app/ProcessStats$e;->q:I

    if-eq v0, v3, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    iput v0, p0, Lcom/android/internal/app/ProcessStats$e;->p:I

    .line 5
    iget v0, p0, Lcom/android/internal/app/ProcessStats$e;->t:I

    if-eq v0, v3, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    iput v1, p0, Lcom/android/internal/app/ProcessStats$e;->s:I

    .line 6
    iput-wide p1, p0, Lcom/android/internal/app/ProcessStats$e;->u:J

    iput-wide p1, p0, Lcom/android/internal/app/ProcessStats$e;->r:J

    iput-wide p1, p0, Lcom/android/internal/app/ProcessStats$e;->o:J

    iput-wide p1, p0, Lcom/android/internal/app/ProcessStats$e;->k:J

    return-void
.end method

.method public i(Landroid/os/Parcel;J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ProcessStats$b;->d(Landroid/os/Parcel;)V

    .line 2
    iget p2, p0, Lcom/android/internal/app/ProcessStats$e;->i:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget p2, p0, Lcom/android/internal/app/ProcessStats$e;->m:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget p2, p0, Lcom/android/internal/app/ProcessStats$e;->p:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget p2, p0, Lcom/android/internal/app/ProcessStats$e;->s:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServiceState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$e;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " proc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
