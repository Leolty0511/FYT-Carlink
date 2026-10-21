.class public Ln0/c4$u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln0/c4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln0/c4;


# direct methods
.method public constructor <init>(Ln0/c4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/c4$u;->a:Ln0/c4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    sget v0, Lk0/nt;->a:I

    const v1, 0xffff

    and-int/2addr v1, v0

    const/16 v2, 0x70

    if-eq v1, v2, :cond_1

    const/16 v2, 0x12a

    if-eq v1, v2, :cond_1

    const/16 v2, 0x1c0

    if-eq v1, v2, :cond_1

    sparse-switch v0, :sswitch_data_0

    .line 2
    sget v0, Lu0/b;->w:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/16 v3, 0x419

    const/4 v4, 0x0

    if-ne v0, v1, :cond_0

    new-array v0, v2, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v3, v0, v4, v4}, Lk0/qt;->A0(I[I[F[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-array v0, v2, [I

    .line 4
    fill-array-data v0, :array_1

    invoke-static {v3, v0, v4, v4}, Lk0/qt;->A0(I[I[F[Ljava/lang/String;)V

    :cond_1
    :goto_0
    :sswitch_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x2d01c7 -> :sswitch_0
        0x5701c7 -> :sswitch_0
        0xbe01c8 -> :sswitch_0
        0xc101c8 -> :sswitch_0
    .end sparse-switch

    :array_0
    .array-data 4
        0xb
        0x40
    .end array-data

    :array_1
    .array-data 4
        0xb
        0x0
    .end array-data
.end method
