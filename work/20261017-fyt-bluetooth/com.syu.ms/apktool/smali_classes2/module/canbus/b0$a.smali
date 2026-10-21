.class public Lmodule/canbus/b0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/b0;


# direct methods
.method public constructor <init>(Lmodule/canbus/b0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/b0$a;->a:Lmodule/canbus/b0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v0, 0x5

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v0, [I

    .line 2
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v0, [I

    .line 3
    fill-array-data v1, :array_2

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    return-void

    :array_0
    .array-data 4
        0xe3
        0x84
        0x2
        0x8
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x84
        0x2
        0x4
        0x7
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x84
        0x2
        0x5
        0x7
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x84
        0x2
        0x6
        0x7
    .end array-data
.end method
