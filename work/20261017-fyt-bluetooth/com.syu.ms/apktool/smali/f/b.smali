.class public Lf/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static d:Lf/b;


# instance fields
.field public final a:I

.field public final b:I

.field public c:Lf/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lf/b;

    invoke-direct {v0}, Lf/b;-><init>()V

    sput-object v0, Lf/b;->d:Lf/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lf/b;->a:I

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lf/b;->b:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lf/b;->c:Lf/c;

    return-void
.end method


# virtual methods
.method public final a(I)Lf/c;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    new-instance p1, Lf/a;

    invoke-direct {p1}, Lf/a;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p1, Lf/d;

    invoke-direct {p1}, Lf/d;-><init>()V

    :goto_0
    return-object p1
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/b;->c:Lf/c;

    if-nez v0, :cond_0

    const/16 v0, 0xd

    .line 2
    invoke-static {v0}, Lg/f;->f(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lf/b;->a(I)Lf/c;

    move-result-object v0

    iput-object v0, p0, Lf/b;->c:Lf/c;

    :cond_0
    return-void
.end method
