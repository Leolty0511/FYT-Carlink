.class public Lk0/aa$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/aa;


# direct methods
.method public constructor <init>(Lk0/aa;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/aa$d;->a:Lk0/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk0/aa$d;->a:Lk0/aa;

    sget-object v1, Lu0/b;->i3:Ljava/lang/String;

    const/16 v2, -0x1c

    invoke-static {v0, v2, v1}, Lk0/aa;->a3(Lk0/aa;BLjava/lang/String;)V

    .line 2
    sget v0, Lu0/b;->D:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lk0/aa$d;->a:Lk0/aa;

    const/16 v1, -0x1d

    const-string v3, ""

    invoke-static {v0, v1, v3}, Lk0/aa;->a3(Lk0/aa;BLjava/lang/String;)V

    .line 4
    iget-object v0, p0, Lk0/aa$d;->a:Lk0/aa;

    invoke-static {v0, v2, v3}, Lk0/aa;->a3(Lk0/aa;BLjava/lang/String;)V

    :cond_0
    return-void
.end method
