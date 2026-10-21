.class public Lk0/ej$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ej;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ej;


# direct methods
.method public constructor <init>(Lk0/ej;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ej$c;->a:Lk0/ej;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    sget v0, Lh0/c;->E:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v0, v1

    goto :goto_1

    :pswitch_1
    move v0, v3

    goto :goto_1

    :pswitch_2
    move v0, v2

    goto :goto_1

    :goto_0
    :pswitch_3
    move v0, v4

    :goto_1
    const/4 v5, 0x5

    new-array v5, v5, [I

    const/16 v6, 0xe3

    aput v6, v5, v4

    const/16 v6, 0x63

    aput v6, v5, v1

    aput v3, v5, v3

    aput v4, v5, v2

    const/4 v1, 0x4

    aput v0, v5, v1

    .line 2
    invoke-static {v5}, Lz/k;->s([I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
