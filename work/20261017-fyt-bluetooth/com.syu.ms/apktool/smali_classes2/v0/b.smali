.class public Lv0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I

.field public static b:I

.field public static c:Lv0/m;

.field public static final d:[Lo1/x;

.field public static final e:Lo1/x;

.field public static final f:[I

.field public static g:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lv0/m;

    invoke-direct {v0}, Lv0/m;-><init>()V

    sput-object v0, Lv0/b;->c:Lv0/m;

    const/16 v0, 0x4b0

    new-array v1, v0, [Lo1/x;

    .line 2
    sput-object v1, Lv0/b;->d:[Lo1/x;

    .line 3
    new-instance v1, Lo1/x;

    invoke-direct {v1}, Lo1/x;-><init>()V

    sput-object v1, Lv0/b;->e:Lo1/x;

    new-array v0, v0, [I

    .line 4
    sput-object v0, Lv0/b;->f:[I

    return-void
.end method
