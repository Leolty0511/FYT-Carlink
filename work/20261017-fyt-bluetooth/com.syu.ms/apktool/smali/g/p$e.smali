.class public Lg/p$e;
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
    iput-object p1, p0, Lg/p$e;->a:Lg/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget v0, Lu0/b;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lg/p$e;->a:Lg/p;

    iget-object v0, v0, Lg/p;->G0:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v2, Lu0/b;->d:I

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lu0/d;->U1(I)V

    .line 3
    :cond_0
    sget v0, Lu0/b;->j:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lg/p$e;->a:Lg/p;

    iget-object v0, v0, Lg/p;->H0:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v2, Lu0/b;->j:I

    if-eq v0, v2, :cond_1

    .line 4
    invoke-static {v1}, Lu0/d;->N(I)V

    .line 5
    :cond_1
    iget-object v0, p0, Lg/p$e;->a:Lg/p;

    const/4 v1, 0x0

    iput-object v1, v0, Lg/p;->G0:Ljava/lang/Integer;

    .line 6
    iput-object v1, v0, Lg/p;->H0:Ljava/lang/Integer;

    return-void
.end method
