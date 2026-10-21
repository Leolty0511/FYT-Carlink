.class public Lk0/bt$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/bt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/bt;


# direct methods
.method public constructor <init>(Lk0/bt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/bt$a;->a:Lk0/bt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget v0, Ly0/f;->Y:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    new-array v0, v1, [I

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_0
    new-array v0, v1, [I

    .line 3
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        0x85
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x85
        0x1
        0x0
    .end array-data
.end method
