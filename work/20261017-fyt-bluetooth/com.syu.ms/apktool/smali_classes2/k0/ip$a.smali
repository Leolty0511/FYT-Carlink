.class public Lk0/ip$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ip;


# direct methods
.method public constructor <init>(Lk0/ip;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ip$a;->a:Lk0/ip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    sget v0, Lh0/c;->E:I

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x3

    if-eq v0, v5, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v6, 0x5

    if-eq v0, v6, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v5

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v1

    .line 2
    :goto_0
    iget-object v6, p0, Lk0/ip$a;->a:Lk0/ip;

    invoke-static {v6}, Lk0/ip;->b3(Lk0/ip;)I

    move-result v6

    if-eq v6, v0, :cond_3

    .line 3
    iget-object v6, p0, Lk0/ip$a;->a:Lk0/ip;

    invoke-static {v6, v0}, Lk0/ip;->c3(Lk0/ip;I)I

    new-array v2, v2, [I

    const/16 v6, 0xe3

    aput v6, v2, v3

    const/16 v3, 0xa3

    aput v3, v2, v4

    aput v4, v2, v1

    aput v0, v2, v5

    .line 4
    invoke-static {v2}, Lz/k;->s([I)V

    :cond_3
    return-void
.end method
