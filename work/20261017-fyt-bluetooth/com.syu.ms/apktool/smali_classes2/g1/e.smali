.class public Lg1/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Runnable;

.field public static final b:Ljava/lang/Runnable;

.field public static final c:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lg1/e$a;

    invoke-direct {v0}, Lg1/e$a;-><init>()V

    sput-object v0, Lg1/e;->a:Ljava/lang/Runnable;

    .line 2
    new-instance v0, Lg1/e$b;

    invoke-direct {v0}, Lg1/e$b;-><init>()V

    sput-object v0, Lg1/e;->b:Ljava/lang/Runnable;

    .line 3
    new-instance v0, Lg1/e$c;

    invoke-direct {v0}, Lg1/e$c;-><init>()V

    sput-object v0, Lg1/e;->c:Ljava/lang/Runnable;

    return-void
.end method
