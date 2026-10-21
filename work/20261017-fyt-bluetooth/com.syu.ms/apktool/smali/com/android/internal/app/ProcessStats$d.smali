.class public final Lcom/android/internal/app/ProcessStats$d;
.super Lcom/android/internal/app/ProcessStats$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ProcessStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final e:Lcom/android/internal/app/ProcessStats$d;

.field public final f:Ljava/lang/String;

.field public final g:I

.field public h:I

.field public i:J

.field public j:I

.field public k:J

.field public l:[I

.field public m:I

.field public n:Z

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:J

.field public u:J

.field public v:J

.field public w:Z

.field public x:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ProcessStats$d;Ljava/lang/String;ILjava/lang/String;J)V
    .locals 1

    .line 7
    iget-object v0, p1, Lcom/android/internal/app/ProcessStats$b;->a:Lcom/android/internal/app/ProcessStats;

    invoke-direct {p0, v0, p4}, Lcom/android/internal/app/ProcessStats$b;-><init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;)V

    const/4 p4, -0x1

    .line 8
    iput p4, p0, Lcom/android/internal/app/ProcessStats$d;->h:I

    .line 9
    iput p4, p0, Lcom/android/internal/app/ProcessStats$d;->j:I

    .line 10
    iput-object p1, p0, Lcom/android/internal/app/ProcessStats$d;->e:Lcom/android/internal/app/ProcessStats$d;

    .line 11
    iput-object p2, p0, Lcom/android/internal/app/ProcessStats$d;->f:Ljava/lang/String;

    .line 12
    iput p3, p0, Lcom/android/internal/app/ProcessStats$d;->g:I

    .line 13
    iget p1, p1, Lcom/android/internal/app/ProcessStats$d;->h:I

    iput p1, p0, Lcom/android/internal/app/ProcessStats$d;->h:I

    .line 14
    iput-wide p5, p0, Lcom/android/internal/app/ProcessStats$d;->i:J

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p4}, Lcom/android/internal/app/ProcessStats$b;-><init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/android/internal/app/ProcessStats$d;->h:I

    .line 3
    iput p1, p0, Lcom/android/internal/app/ProcessStats$d;->j:I

    .line 4
    iput-object p0, p0, Lcom/android/internal/app/ProcessStats$d;->e:Lcom/android/internal/app/ProcessStats$d;

    .line 5
    iput-object p2, p0, Lcom/android/internal/app/ProcessStats$d;->f:Ljava/lang/String;

    .line 6
    iput p3, p0, Lcom/android/internal/app/ProcessStats$d;->g:I

    return-void
.end method


# virtual methods
.method public e(J)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/internal/app/ProcessStats$d;->h:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    iget-wide v1, p0, Lcom/android/internal/app/ProcessStats$d;->i:J

    sub-long v1, p1, v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 3
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/app/ProcessStats$b;->a(IJ)V

    .line 4
    :cond_0
    iput-wide p1, p0, Lcom/android/internal/app/ProcessStats$d;->i:J

    return-void
.end method

.method public f()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/app/ProcessStats$d;->n:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/internal/app/ProcessStats$d;->o:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/android/internal/app/ProcessStats$d;->p:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/android/internal/app/ProcessStats$d;->h:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

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

.method public g()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/internal/app/ProcessStats$d;->x:Z

    return-void
.end method

.method public h(Landroid/os/Parcel;Z)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz p2, :cond_1

    .line 2
    iput-boolean v0, p0, Lcom/android/internal/app/ProcessStats$d;->w:Z

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ProcessStats$b;->b(Landroid/os/Parcel;)Z

    move-result p2

    if-nez p2, :cond_2

    return v2

    .line 4
    :cond_2
    iget-object p2, p0, Lcom/android/internal/app/ProcessStats$b;->a:Lcom/android/internal/app/ProcessStats;

    iget-object v0, p0, Lcom/android/internal/app/ProcessStats$b;->b:Ljava/lang/String;

    const-string v3, "pss"

    invoke-static {p2, p1, v0, v3}, Lcom/android/internal/app/ProcessStats;->a(Lcom/android/internal/app/ProcessStats;Landroid/os/Parcel;Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/app/ProcessStats$d;->l:[I

    .line 5
    sget-object v0, Lcom/android/internal/app/ProcessStats;->M:[I

    if-ne p2, v0, :cond_3

    return v2

    :cond_3
    if-eqz p2, :cond_4

    .line 6
    array-length v2, p2

    :cond_4
    iput v2, p0, Lcom/android/internal/app/ProcessStats$d;->m:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/android/internal/app/ProcessStats$d;->q:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/android/internal/app/ProcessStats$d;->r:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/android/internal/app/ProcessStats$d;->s:I

    if-lez p2, :cond_5

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/app/ProcessStats$d;->t:J

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/app/ProcessStats$d;->u:J

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/internal/app/ProcessStats$d;->v:J

    goto :goto_1

    :cond_5
    const-wide/16 p1, 0x0

    .line 13
    iput-wide p1, p0, Lcom/android/internal/app/ProcessStats$d;->v:J

    iput-wide p1, p0, Lcom/android/internal/app/ProcessStats$d;->u:J

    iput-wide p1, p0, Lcom/android/internal/app/ProcessStats$d;->t:J

    :goto_1
    return v1
.end method

.method public i(J)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/ProcessStats$b;->c()V

    .line 2
    iput-wide p1, p0, Lcom/android/internal/app/ProcessStats$d;->i:J

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcom/android/internal/app/ProcessStats$d;->j:I

    const-wide/16 p1, 0x0

    .line 4
    iput-wide p1, p0, Lcom/android/internal/app/ProcessStats$d;->k:J

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/internal/app/ProcessStats$d;->l:[I

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/android/internal/app/ProcessStats$d;->m:I

    .line 7
    iput v0, p0, Lcom/android/internal/app/ProcessStats$d;->q:I

    .line 8
    iput v0, p0, Lcom/android/internal/app/ProcessStats$d;->r:I

    .line 9
    iput v0, p0, Lcom/android/internal/app/ProcessStats$d;->s:I

    .line 10
    iput-wide p1, p0, Lcom/android/internal/app/ProcessStats$d;->v:J

    iput-wide p1, p0, Lcom/android/internal/app/ProcessStats$d;->u:J

    iput-wide p1, p0, Lcom/android/internal/app/ProcessStats$d;->t:J

    return-void
.end method

.method public j(Landroid/os/Parcel;J)V
    .locals 0

    .line 1
    iget-boolean p2, p0, Lcom/android/internal/app/ProcessStats$d;->w:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ProcessStats$b;->d(Landroid/os/Parcel;)V

    .line 3
    iget p2, p0, Lcom/android/internal/app/ProcessStats$d;->m:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p2, 0x0

    .line 4
    :goto_0
    iget p3, p0, Lcom/android/internal/app/ProcessStats$d;->m:I

    if-ge p2, p3, :cond_0

    .line 5
    iget-object p3, p0, Lcom/android/internal/app/ProcessStats$d;->l:[I

    aget p3, p3, p2

    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iget p2, p0, Lcom/android/internal/app/ProcessStats$d;->q:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget p2, p0, Lcom/android/internal/app/ProcessStats$d;->r:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget p2, p0, Lcom/android/internal/app/ProcessStats$d;->s:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget p2, p0, Lcom/android/internal/app/ProcessStats$d;->s:I

    if-lez p2, :cond_1

    .line 10
    iget-wide p2, p0, Lcom/android/internal/app/ProcessStats$d;->t:J

    invoke-virtual {p1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 11
    iget-wide p2, p0, Lcom/android/internal/app/ProcessStats$d;->u:J

    invoke-virtual {p1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 12
    iget-wide p2, p0, Lcom/android/internal/app/ProcessStats$d;->v:J

    invoke-virtual {p1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ProcessState{"

    .line 2
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

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/app/ProcessStats$d;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$d;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-boolean v1, p0, Lcom/android/internal/app/ProcessStats$d;->w:Z

    if-eqz v1, :cond_0

    const-string v1, " (multi)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$d;->e:Lcom/android/internal/app/ProcessStats$d;

    if-eq v1, p0, :cond_1

    const-string v1, " (sub)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string/jumbo v1, "}"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
