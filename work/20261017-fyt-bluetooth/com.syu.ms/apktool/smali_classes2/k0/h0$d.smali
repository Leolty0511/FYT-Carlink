.class public Lk0/h0$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/h0;


# direct methods
.method public constructor <init>(Lk0/h0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/h0$d;->a:Lk0/h0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v0, 0x6

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    return-void

    :array_0
    .array-data 4
        0xe3
        0x3
        0x60
        0x5
        0x1
        0x32
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x3
        0x60
        0x5
        0x1
        0x34
    .end array-data
.end method
