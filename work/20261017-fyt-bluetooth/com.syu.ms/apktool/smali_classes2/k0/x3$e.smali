.class public Lk0/x3$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/x3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/x3;


# direct methods
.method public constructor <init>(Lk0/x3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/x3$e;->a:Lk0/x3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    sget v0, Lu0/b;->D:I

    const/16 v1, 0x72

    const/16 v2, 0x71

    const/16 v3, 0x70

    const/16 v4, 0x8

    if-eq v0, v4, :cond_1

    const/16 v4, 0xa

    if-ne v0, v4, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lk0/x3$e;->a:Lk0/x3;

    const-string v4, " "

    invoke-static {v0, v3, v4}, Lk0/x3;->l3(Lk0/x3;BLjava/lang/String;)V

    .line 3
    iget-object v0, p0, Lk0/x3$e;->a:Lk0/x3;

    invoke-static {v0, v2, v4}, Lk0/x3;->l3(Lk0/x3;BLjava/lang/String;)V

    .line 4
    iget-object v0, p0, Lk0/x3$e;->a:Lk0/x3;

    invoke-static {v0, v1, v4}, Lk0/x3;->l3(Lk0/x3;BLjava/lang/String;)V

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lk0/x3$e;->a:Lk0/x3;

    sget-object v4, Lu0/b;->i3:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lk0/x3;->l3(Lk0/x3;BLjava/lang/String;)V

    .line 6
    iget-object v0, p0, Lk0/x3$e;->a:Lk0/x3;

    sget-object v3, Lu0/b;->j3:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lk0/x3;->l3(Lk0/x3;BLjava/lang/String;)V

    .line 7
    iget-object v0, p0, Lk0/x3$e;->a:Lk0/x3;

    sget-object v2, Lu0/b;->k3:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lk0/x3;->l3(Lk0/x3;BLjava/lang/String;)V

    :goto_1
    return-void
.end method
