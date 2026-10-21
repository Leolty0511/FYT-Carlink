.class public Lk0/oe$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/oe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/oe;


# direct methods
.method public constructor <init>(Lk0/oe;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/oe$g;->a:Lk0/oe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/oe$g;->a:Lk0/oe;

    invoke-static {v0}, Lk0/oe;->c3(Lk0/oe;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lh0/c;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lk0/oe$g;->a:Lk0/oe;

    sget-object v1, Lh0/c;->q:Ljava/lang/String;

    invoke-static {v0, v1}, Lk0/oe;->d3(Lk0/oe;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lk0/oe$g;->a:Lk0/oe;

    invoke-static {v0}, Lk0/oe;->c3(Lk0/oe;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lk0/oe$g;->a:Lk0/oe;

    const-string v1, ""

    invoke-static {v0, v1}, Lk0/oe;->d3(Lk0/oe;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lk0/oe$g;->a:Lk0/oe;

    invoke-static {v0}, Lk0/oe;->c3(Lk0/oe;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lk0/oe;->e3(Lk0/oe;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
