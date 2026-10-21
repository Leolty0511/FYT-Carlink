.class public Lk0/ul$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ul;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ul;


# direct methods
.method public constructor <init>(Lk0/ul;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ul$c;->a:Lk0/ul;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    new-array v0, v1, [I

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v1, [I

    .line 3
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_0
    new-array v0, v1, [I

    .line 4
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v1, [I

    .line 5
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x8b
        0x2
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x8b
        0x2
        0x2
        0x1
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x8b
        0x2
        0x1
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x8b
        0x2
        0x2
        0x0
    .end array-data
.end method
