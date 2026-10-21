.class public Lh0/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lh0/a;


# direct methods
.method public constructor <init>(Lh0/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lh0/a$a;->a:Lh0/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget v0, Lu0/b;->f:I

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    new-array v0, v1, [I

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->r([I)V

    goto :goto_0

    :cond_0
    new-array v0, v1, [I

    .line 3
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->r([I)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x42
        0x45
        0x31
    .end array-data

    :array_1
    .array-data 4
        0x42
        0x45
        0x30
    .end array-data
.end method
