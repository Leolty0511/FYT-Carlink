.class public Lk0/lg$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/lg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/lg;


# direct methods
.method public constructor <init>(Lk0/lg;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/lg$a;->a:Lk0/lg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget v0, Lu0/b;->o:I

    if-nez v0, :cond_0

    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 2
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0xe3
        0xf1
        0x1
        0x2a
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xf1
        0x1
        0x2b
    .end array-data
.end method
