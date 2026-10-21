.class public Lg/p$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lg/p;


# direct methods
.method public constructor <init>(Lg/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/p$d;->a:Lg/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-------->> turnOnScreen  DataMain.sMcuOnForUi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lu0/b;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " DataMain.sBlackScreen : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lu0/b;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Device"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget v0, Lu0/b;->d:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/p$d;->a:Lg/p;

    iget-object v0, v0, Lg/p;->G0:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v3, Lu0/b;->d:I

    if-ne v0, v3, :cond_0

    .line 3
    invoke-static {v1}, Lu0/d;->U1(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lg/p$d;->a:Lg/p;

    iput-object v2, v0, Lg/p;->G0:Ljava/lang/Integer;

    .line 5
    :goto_0
    sget v0, Lu0/b;->j:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lg/p$d;->a:Lg/p;

    iget-object v0, v0, Lg/p;->H0:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v1, Lu0/b;->j:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 6
    invoke-static {v0}, Lu0/d;->N(I)V

    goto :goto_1

    .line 7
    :cond_1
    iget-object v0, p0, Lg/p$d;->a:Lg/p;

    iput-object v2, v0, Lg/p;->H0:Ljava/lang/Integer;

    :goto_1
    return-void
.end method
