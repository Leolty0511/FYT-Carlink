.class public Lk0/qi$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/qi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/qi;


# direct methods
.method public constructor <init>(Lk0/qi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/qi$g;->a:Lk0/qi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget v0, Lk0/qi;->r:I

    sget v1, Lu0/b;->D:I

    if-eq v0, v1, :cond_1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    .line 3
    :cond_0
    sget v0, Lu0/b;->D:I

    sput v0, Lk0/qi;->r:I

    :cond_1
    return-void

    :array_0
    .array-data 4
        0xe3
        0x83
        0x1
        0x2
    .end array-data
.end method
