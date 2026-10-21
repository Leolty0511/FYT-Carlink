.class public Lk0/rc$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/rc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/rc;


# direct methods
.method public constructor <init>(Lk0/rc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/rc$j;->a:Lk0/rc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget v0, Lu0/b;->D:I

    const/16 v1, 0x71

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    .line 2
    iget-object v0, p0, Lk0/rc$j;->a:Lk0/rc;

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lk0/rc;->c3(Lk0/rc;BLjava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    const/16 v2, 0xa

    if-ne v0, v2, :cond_2

    .line 3
    :cond_1
    iget-object v0, p0, Lk0/rc$j;->a:Lk0/rc;

    sget-object v2, Lu0/b;->j3:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lk0/rc;->c3(Lk0/rc;BLjava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
