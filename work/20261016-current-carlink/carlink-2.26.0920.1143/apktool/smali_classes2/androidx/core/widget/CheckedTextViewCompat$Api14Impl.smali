.class Landroidx/core/widget/CheckedTextViewCompat$Api14Impl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/CheckedTextViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Api14Impl"
.end annotation


# static fields
.field private static sCheckMarkDrawableField:Ljava/lang/reflect/Field;

.field private static sResolved:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCheckMarkDrawable(Landroid/widget/CheckedTextView;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p0    # Landroid/widget/CheckedTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    sget-boolean v0, Landroidx/core/widget/CheckedTextViewCompat$Api14Impl;->sResolved:Z

    .line 2
    .line 3
    const-string v1, "CheckedTextViewCompat"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    :try_start_0
    const-class v2, Landroid/widget/CheckedTextView;

    .line 9
    .line 10
    const-string v3, "mCheckMarkDrawable"

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    sput-object v2, Landroidx/core/widget/CheckedTextViewCompat$Api14Impl;->sCheckMarkDrawableField:Ljava/lang/reflect/Field;

    .line 17
    .line 18
    invoke-virtual {v2, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception v2

    .line 23
    const-string v3, "Failed to retrieve mCheckMarkDrawable field"

    .line 24
    .line 25
    invoke-static {v1, v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 26
    .line 27
    .line 28
    :goto_0
    sput-boolean v0, Landroidx/core/widget/CheckedTextViewCompat$Api14Impl;->sResolved:Z

    .line 29
    .line 30
    :cond_0
    sget-object v0, Landroidx/core/widget/CheckedTextViewCompat$Api14Impl;->sCheckMarkDrawableField:Ljava/lang/reflect/Field;

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    :try_start_1
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    check-cast p0, Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 40
    .line 41
    return-object p0

    .line 42
    :catch_1
    move-exception p0

    .line 43
    const-string v0, "Failed to get check mark drawable via reflection"

    .line 44
    .line 45
    invoke-static {v1, v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    .line 47
    .line 48
    sput-object v2, Landroidx/core/widget/CheckedTextViewCompat$Api14Impl;->sCheckMarkDrawableField:Ljava/lang/reflect/Field;

    .line 49
    .line 50
    :cond_1
    return-object v2
.end method
