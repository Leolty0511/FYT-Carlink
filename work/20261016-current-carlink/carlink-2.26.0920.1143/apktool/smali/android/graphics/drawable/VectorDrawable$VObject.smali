.class abstract Landroid/graphics/drawable/VectorDrawable$VObject;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/VectorDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "VObject"
.end annotation


# instance fields
.field mTreePtr:Lcom/android/internal/util/VirtualRefBasePtr;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VObject;->mTreePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public abstract applyTheme(Landroid/content/res/Resources$Theme;)V
.end method

.method public abstract canApplyTheme()Z
.end method

.method public abstract getNativePtr()J
.end method

.method public abstract getNativeSize()I
.end method

.method public abstract getProperty(Ljava/lang/String;)Landroid/util/Property;
.end method

.method public abstract hasFocusStateSpecified()Z
.end method

.method public abstract inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
.end method

.method public abstract isStateful()Z
.end method

.method public isTreeValid()Z
    .locals 4

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VObject;->mTreePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract onStateChange([I)Z
.end method

.method public setTree(Lcom/android/internal/util/VirtualRefBasePtr;)V
    .locals 0

    iput-object p1, p0, Landroid/graphics/drawable/VectorDrawable$VObject;->mTreePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    return-void
.end method
