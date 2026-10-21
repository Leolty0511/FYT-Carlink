.class public Lplugins/ZLink$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lplugins/ZLink;->e0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lplugins/ZLink;


# direct methods
.method public constructor <init>(Lplugins/ZLink;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lplugins/ZLink$d;->a:Lplugins/ZLink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lplugins/ZLink$d;->a:Lplugins/ZLink;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lplugins/ZLink;->d:Z

    .line 2
    iget-boolean v0, v0, Lplugins/ZLink;->g:Z

    if-eqz v0, :cond_0

    sget v0, Lh0/c;->a:I

    if-ne v0, v1, :cond_0

    .line 3
    sget-object v0, Lh0/c;->b:Lh0/f;

    invoke-interface {v0, v1}, Lh0/f;->P(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lplugins/ZLink$d;->a:Lplugins/ZLink;

    iget-object v0, v0, Lplugins/ZLink;->k:Ljava/lang/String;

    const-string v1, "carplay_wired"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lplugins/ZLink$d;->a:Lplugins/ZLink;

    iget-object v0, v0, Lplugins/ZLink;->k:Ljava/lang/String;

    const-string v1, "carplay_wireless"

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lplugins/ZLink$d;->a:Lplugins/ZLink;

    iget-object v0, v0, Lplugins/ZLink;->k:Ljava/lang/String;

    const-string v1, "auto_wired"

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 7
    :cond_1
    sget v0, Lu0/b;->D:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    .line 8
    sget-object v0, Lu0/b;->c:Lu0/h;

    invoke-interface {v0, v1}, Lu0/h;->c(I)V

    .line 9
    :cond_2
    iget-object v0, p0, Lplugins/ZLink$d;->a:Lplugins/ZLink;

    invoke-virtual {v0}, Lplugins/ZLink;->f0()V

    return-void
.end method
