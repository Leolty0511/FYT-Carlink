.class public Lk0/up$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/up;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/up;


# direct methods
.method public constructor <init>(Lk0/up;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/up$a;->a:Lk0/up;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget v0, Ly0/f;->i:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    sget v0, Ly0/f;->C0:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-array v0, v1, [I

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_1
    :goto_0
    new-array v0, v1, [I

    .line 3
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x99
        0x1
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x99
        0x1
        0x1
    .end array-data
.end method
