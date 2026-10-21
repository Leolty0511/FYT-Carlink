.class public Lk0/q$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/q;


# direct methods
.method public constructor <init>(Lk0/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/q$j;->a:Lk0/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    sget v0, Lu0/b;->D:I

    const-string v1, "."

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_8

    if-eq v0, v2, :cond_7

    const/4 v2, 0x4

    if-eq v0, v2, :cond_4

    const/4 v2, 0x5

    if-eq v0, v2, :cond_3

    const/4 v2, 0x6

    if-eq v0, v2, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "MEDIA"

    goto/16 :goto_2

    :cond_1
    const-string v0, "IPOD"

    goto/16 :goto_2

    .line 2
    :cond_2
    sget v0, Ld1/d;->c:I

    if-ne v0, v3, :cond_5

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TV "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Ld1/d;->e:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Ld1/d;->d:I

    div-int/lit16 v2, v2, 0x2710

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Ld1/d;->d:I

    rem-int/lit16 v1, v1, 0x2710

    div-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Mhz"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    const-string v0, "AUX"

    goto :goto_2

    .line 4
    :cond_4
    sget v0, Lo0/e;->C:I

    if-nez v0, :cond_6

    :cond_5
    :goto_0
    const-string v0, ""

    goto :goto_2

    .line 5
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DVD "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lo0/e;->B:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_7
    const-string v0, "BT Phone"

    goto :goto_2

    .line 6
    :cond_8
    sget v0, Lw0/d;->h:I

    const/high16 v4, 0x10000

    sub-int v5, v0, v4

    if-eqz v5, :cond_a

    sub-int v5, v0, v4

    if-eq v3, v5, :cond_a

    sub-int/2addr v0, v4

    if-ne v2, v0, :cond_9

    goto :goto_1

    .line 7
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lw0/d;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " KHZ"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 8
    :cond_a
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lw0/d;->i:I

    div-int/lit8 v2, v2, 0x64

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lw0/d;->i:I

    rem-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " MHZ"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    :goto_2
    iget-object v1, p0, Lk0/q$j;->a:Lk0/q;

    const/16 v2, -0x6f

    invoke-static {v1, v2, v0}, Lk0/q;->l3(Lk0/q;BLjava/lang/String;)V

    .line 10
    iget-object v0, p0, Lk0/q$j;->a:Lk0/q;

    const/16 v1, -0x6e

    const-string v2, " "

    invoke-static {v0, v1, v2}, Lk0/q;->w3(Lk0/q;BLjava/lang/String;)V

    .line 11
    iget-object v0, p0, Lk0/q$j;->a:Lk0/q;

    const/16 v1, -0x6d

    invoke-static {v0, v1, v2}, Lk0/q;->w3(Lk0/q;BLjava/lang/String;)V

    .line 12
    iget-object v0, p0, Lk0/q$j;->a:Lk0/q;

    const/16 v1, -0x6c

    invoke-static {v0, v1, v2}, Lk0/q;->w3(Lk0/q;BLjava/lang/String;)V

    return-void
.end method
