.class public Lk0/cp$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/cp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/cp;


# direct methods
.method public constructor <init>(Lk0/cp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/cp$d;->a:Lk0/cp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x7

    const/4 v5, 0x1

    if-eq v0, v5, :cond_1

    if-eq v0, v3, :cond_0

    packed-switch v0, :pswitch_data_0

    move v0, v4

    goto :goto_0

    :pswitch_0
    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v5

    .line 2
    :goto_0
    sget v6, Lu0/b;->a0:I

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    move v4, v0

    :goto_1
    new-array v0, v3, [I

    const/4 v3, 0x0

    const/16 v6, 0xe3

    aput v6, v0, v3

    const/16 v3, -0x7e

    aput v3, v0, v5

    aput v5, v0, v2

    aput v4, v0, v1

    .line 3
    invoke-static {v0}, Lz/k;->s([I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
