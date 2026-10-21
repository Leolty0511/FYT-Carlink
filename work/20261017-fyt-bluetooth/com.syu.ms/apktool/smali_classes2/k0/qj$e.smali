.class public Lk0/qj$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/qj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/qj;


# direct methods
.method public constructor <init>(Lk0/qj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/qj$e;->a:Lk0/qj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget v0, Lu0/b;->D:I

    const/16 v1, -0x6d

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    .line 2
    iget-object v0, p0, Lk0/qj$e;->a:Lk0/qj;

    sget-object v2, Lu0/b;->k3:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lk0/qj;->d3(Lk0/qj;BLjava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lk0/qj$e;->a:Lk0/qj;

    const-string v2, " "

    invoke-static {v0, v1, v2}, Lk0/qj;->d3(Lk0/qj;BLjava/lang/String;)V

    :goto_0
    return-void
.end method
