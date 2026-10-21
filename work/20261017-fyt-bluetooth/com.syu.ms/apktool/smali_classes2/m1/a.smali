.class public Lm1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[I

.field public static final b:[I

.field public static c:Z

.field public static d:I

.field public static e:Z

.field public static f:Lo1/g0;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x80

    new-array v1, v0, [I

    .line 1
    sput-object v1, Lm1/a;->a:[I

    new-array v1, v0, [I

    .line 2
    sput-object v1, Lm1/a;->b:[I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 3
    sget-object v3, Lm1/a;->b:[I

    const/4 v4, -0x1

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    sput-boolean v1, Lm1/a;->c:Z

    const v0, 0xabcdef0

    .line 5
    sput v0, Lm1/a;->d:I

    .line 6
    sput-boolean v1, Lm1/a;->e:Z

    return-void
.end method
