.class public Lc0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lo1/s;

.field public static final b:Lo1/s;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc0/b$a;

    invoke-direct {v0}, Lc0/b$a;-><init>()V

    sput-object v0, Lc0/b;->a:Lo1/s;

    .line 2
    new-instance v0, Lc0/b$b;

    invoke-direct {v0}, Lc0/b$b;-><init>()V

    sput-object v0, Lc0/b;->b:Lo1/s;

    return-void
.end method
