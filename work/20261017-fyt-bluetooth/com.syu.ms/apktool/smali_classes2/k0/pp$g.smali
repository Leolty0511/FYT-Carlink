.class public Lk0/pp$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/pp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/pp;


# direct methods
.method public constructor <init>(Lk0/pp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/pp$g;->a:Lk0/pp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget-object v0, Lu0/b;->k3:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget v0, Lu0/b;->D:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 3
    :cond_1
    iget-object v0, p0, Lk0/pp$g;->a:Lk0/pp;

    iget-object v0, v0, Lk0/pp;->y:Ljava/lang/String;

    sget-object v1, Lu0/b;->k3:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lk0/pp$g;->a:Lk0/pp;

    sget-object v1, Lu0/b;->k3:Ljava/lang/String;

    iput-object v1, v0, Lk0/pp;->y:Ljava/lang/String;

    const/16 v2, 0x70

    .line 5
    invoke-static {v0, v2, v1}, Lk0/pp;->l3(Lk0/pp;BLjava/lang/String;)V

    :cond_2
    return-void
.end method
