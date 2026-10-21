.class public Lk0/il$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/il;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/il;


# direct methods
.method public constructor <init>(Lk0/il;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/il$e;->a:Lk0/il;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    sget v0, Lk0/il;->Q:I

    sget v1, Lu0/b;->D:I

    if-eq v0, v1, :cond_3

    if-eqz v1, :cond_2

    const/16 v0, 0xd

    if-eq v1, v0, :cond_2

    .line 2
    sget v1, Lk0/il;->Q:I

    if-eqz v1, :cond_0

    if-ne v1, v0, :cond_2

    .line 3
    :cond_0
    invoke-static {}, Lk0/il;->d3()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/16 v0, 0x8

    new-array v0, v0, [I

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v2, 0x2

    const/16 v3, 0x6e

    aput v3, v0, v2

    const/4 v2, 0x3

    const/4 v3, 0x4

    aput v3, v0, v2

    aput v1, v0, v3

    const/4 v2, 0x5

    .line 4
    invoke-static {}, Lk0/il;->e3()I

    move-result v3

    aput v3, v0, v2

    const/4 v2, 0x6

    aput v1, v0, v2

    const/4 v2, 0x7

    aput v1, v0, v2

    invoke-static {v0}, Lz/k;->s([I)V

    .line 5
    :cond_1
    iget-object v0, p0, Lk0/il$e;->a:Lk0/il;

    invoke-static {v0, v1}, Lk0/il;->c3(Lk0/il;Z)V

    .line 6
    :cond_2
    sget v0, Lu0/b;->D:I

    sput v0, Lk0/il;->Q:I

    :cond_3
    return-void
.end method
