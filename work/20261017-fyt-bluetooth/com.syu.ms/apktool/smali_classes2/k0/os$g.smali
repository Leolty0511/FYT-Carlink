.class public Lk0/os$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/os;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/os;


# direct methods
.method public constructor <init>(Lk0/os;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/os$g;->a:Lk0/os;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk0/os$g;->a:Lk0/os;

    iget-boolean v0, v0, Lk0/os;->p:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0xe3
        0x90
        0x2
        0x41
        0x3
    .end array-data
.end method
