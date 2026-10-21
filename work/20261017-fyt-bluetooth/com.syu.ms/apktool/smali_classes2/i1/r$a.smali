.class public Li1/r$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li1/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Le/e$a;

.field public final synthetic b:Li1/r;


# direct methods
.method public constructor <init>(Li1/r;)V
    .locals 1

    .line 1
    iput-object p1, p0, Li1/r$a;->b:Li1/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Le/e$a;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, v0}, Le/e$a;-><init>(III)V

    iput-object p1, p0, Li1/r$a;->a:Le/e$a;

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    check-cast p1, Le/e$a;

    iput-object p1, p0, Li1/r$a;->a:Le/e$a;

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sx="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Li1/r$a;->a:Le/e$a;

    iget v0, v0, Le/e$a;->b:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " sy="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Li1/r$a;->a:Le/e$a;

    iget v0, v0, Le/e$a;->c:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Device"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Li1/r$a;->a:Le/e$a;

    iget v1, p1, Le/e$a;->b:I

    mul-int/lit16 v1, v1, 0xff

    div-int/lit16 v1, v1, 0x320

    .line 4
    iget p1, p1, Le/e$a;->c:I

    mul-int/lit16 p1, p1, 0xff

    div-int/lit16 p1, p1, 0x1e0

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "x="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " y="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v0, p0, Li1/r$a;->a:Le/e$a;

    iget v0, v0, Le/e$a;->a:I

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Li1/r$a;->b:Li1/r;

    invoke-virtual {v0, v1, p1}, Li1/r;->w(II)V

    :cond_1
    return-void
.end method
