.class public Lk0/qn$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/qn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/qn;


# direct methods
.method public constructor <init>(Lk0/qn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/qn$f;->a:Lk0/qn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget v0, Lk0/nt;->a:I

    const/4 v1, 0x5

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    new-array v0, v1, [I

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_1
    new-array v0, v1, [I

    .line 3
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_2
    new-array v0, v1, [I

    .line 4
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_3
    new-array v0, v1, [I

    .line 5
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xa01c4 -> :sswitch_3
        0xb01c4 -> :sswitch_2
        0x9101c4 -> :sswitch_3
        0x9201c4 -> :sswitch_2
        0xd701c7 -> :sswitch_1
        0xd801c7 -> :sswitch_0
    .end sparse-switch

    :array_0
    .array-data 4
        0xe3
        -0x59
        0x2
        0x11
        0x3
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x59
        0x2
        0x11
        0x2
    .end array-data

    :array_2
    .array-data 4
        0xe3
        -0x59
        0x2
        0x11
        0x1
    .end array-data

    :array_3
    .array-data 4
        0xe3
        -0x59
        0x2
        0x11
        0x0
    .end array-data
.end method
