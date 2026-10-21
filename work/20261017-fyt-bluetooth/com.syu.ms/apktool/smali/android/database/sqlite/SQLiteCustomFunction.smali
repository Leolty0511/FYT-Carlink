.class public final Landroid/database/sqlite/SQLiteCustomFunction;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final callback:Landroid/database/sqlite/SQLiteDatabase$CustomFunction;

.field public final name:Ljava/lang/String;

.field public final numArgs:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CustomFunction;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Landroid/database/sqlite/SQLiteCustomFunction;->name:Ljava/lang/String;

    .line 3
    iput p2, p0, Landroid/database/sqlite/SQLiteCustomFunction;->numArgs:I

    .line 4
    iput-object p3, p0, Landroid/database/sqlite/SQLiteCustomFunction;->callback:Landroid/database/sqlite/SQLiteDatabase$CustomFunction;

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "name must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private dispatchCallback([Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCustomFunction;->callback:Landroid/database/sqlite/SQLiteDatabase$CustomFunction;

    invoke-interface {v0, p1}, Landroid/database/sqlite/SQLiteDatabase$CustomFunction;->callback([Ljava/lang/String;)V

    return-void
.end method
