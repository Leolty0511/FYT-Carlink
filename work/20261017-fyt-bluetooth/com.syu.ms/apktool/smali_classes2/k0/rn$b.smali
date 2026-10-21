.class public Lk0/rn$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/rn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/rn;


# direct methods
.method public constructor <init>(Lk0/rn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/rn$b;->a:Lk0/rn;

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
    iget-object v0, p0, Lk0/rn$b;->a:Lk0/rn;

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lk0/rn;->h3(Lk0/rn;BLjava/lang/String;)V

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
    iget-object v0, p0, Lk0/rn$b;->a:Lk0/rn;

    sget-object v2, Lu0/b;->j3:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lk0/rn;->h3(Lk0/rn;BLjava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
