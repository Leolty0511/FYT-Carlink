.class public final Lkotlinx/coroutines/scheduling/l;
.super Lkotlinx/coroutines/b;
.source "SourceFile"


# static fields
.field public static final c:Lkotlinx/coroutines/scheduling/l;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/scheduling/l;

    invoke-direct {v0}, Lkotlinx/coroutines/scheduling/l;-><init>()V

    sput-object v0, Lkotlinx/coroutines/scheduling/l;->c:Lkotlinx/coroutines/scheduling/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lu/g;Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    sget-object p1, Lkotlinx/coroutines/scheduling/e;->d:Lkotlinx/coroutines/scheduling/e;

    .line 2
    .line 3
    sget-object v0, Lkotlinx/coroutines/scheduling/k;->g:Le/r;

    .line 4
    .line 5
    iget-object p1, p1, Lkotlinx/coroutines/scheduling/h;->c:Lkotlinx/coroutines/scheduling/c;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1, p2, v0, v1}, Lkotlinx/coroutines/scheduling/c;->b(Ljava/lang/Runnable;Le/r;Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
