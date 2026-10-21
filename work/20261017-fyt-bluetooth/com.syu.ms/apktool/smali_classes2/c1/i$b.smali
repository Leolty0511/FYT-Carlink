.class public Lc1/i$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc1/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc1/i;


# direct methods
.method public constructor <init>(Lc1/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc1/i$b;->a:Lc1/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->o([I)V

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->o([I)V

    return-void

    :array_0
    .array-data 4
        0x0
        0xcd
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x0
        0xcd
        0x1
    .end array-data
.end method
