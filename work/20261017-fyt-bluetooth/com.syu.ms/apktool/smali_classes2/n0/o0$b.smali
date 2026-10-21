.class public Ln0/o0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln0/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public final synthetic b:Ln0/o0;


# direct methods
.method public constructor <init>(Ln0/o0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/o0$b;->b:Ln0/o0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Ln0/o0$b;->a:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public R(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "=======================>>>>>  isTop   : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "  mLast : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ln0/o0$b;->a:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "  DataMain.sAppId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lu0/b;->D:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Qin"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Ln0/o0$b;->b:Ln0/o0;

    iput-boolean p1, v0, Ln0/o0;->A:Z

    const/16 v0, 0xa

    if-eqz p1, :cond_0

    .line 3
    sget p1, Lu0/b;->D:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Ln0/o0$b;->a:Ljava/lang/Integer;

    .line 4
    sget p1, Lu0/b;->D:I

    if-eq p1, v0, :cond_1

    .line 5
    sget-object p1, Lu0/b;->c:Lu0/h;

    invoke-interface {p1, v0}, Lu0/h;->c(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Ln0/o0$b;->a:Ljava/lang/Integer;

    if-eqz p1, :cond_1

    sget v1, Lu0/b;->D:I

    if-ne v1, v0, :cond_1

    .line 7
    sget-object v0, Lu0/b;->c:Lu0/h;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lu0/h;->c(I)V

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Ln0/o0$b;->a:Ljava/lang/Integer;

    :cond_1
    :goto_0
    return-void
.end method
