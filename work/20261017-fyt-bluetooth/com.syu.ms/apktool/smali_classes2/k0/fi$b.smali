.class public Lk0/fi$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/fi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/fi;


# direct methods
.method public constructor <init>(Lk0/fi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/fi$b;->a:Lk0/fi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget v0, Lk0/nt;->c:I

    const/4 v1, 0x5

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-array v0, v1, [I

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_1
    new-array v0, v1, [I

    .line 3
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_2
    new-array v0, v1, [I

    .line 4
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_3
    new-array v0, v1, [I

    .line 5
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        -0x12
        0x2
        0x3
        0x4
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x12
        0x2
        0x3
        0x3
    .end array-data

    :array_2
    .array-data 4
        0xe3
        -0x12
        0x2
        0x3
        0x2
    .end array-data

    :array_3
    .array-data 4
        0xe3
        -0x12
        0x2
        0x3
        0x1
    .end array-data
.end method
